import 'dart:convert';

import 'package:ccr/domain/failures/failures.dart';
import 'package:ccr/domain/models/review.dart';
import 'package:ccr/domain/models/stopping_point.dart';
import 'package:ccr/domain/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class Repository {
  Future<Either<Failure, List<StoppingPoint>>> getStoppingPoints() async {
    try {
      final result =
          await Firestore.instance.collection('stopping-point').getDocuments();

      final List<StoppingPoint> stoppingPoints =
          result.documents.map((e) => StoppingPoint.fromJson(e.data)).toList();
      return right(stoppingPoints);
    } catch (e) {
      return left(
        Failure.serverFailure(
          e.toString(),
        ),
      );
    }
  }

  Future<Either<Failure, User>> getUser() async {
    try {
      final result = await _getFirebaseUser();
      final userData = (await result.get()).data;
      final List reviews = userData['reviews'];
      final double totalPoints = reviews.fold(
        0,
        (previousValue, element) => previousValue + element['point'],
      );
      userData['totalPoints'] = totalPoints;
      final User user = User.fromJson(userData);
      return right(user);
    } catch (e) {
      print(e.toString());
      return left(
        Failure.serverFailure(
          e.toString(),
        ),
      );
    }
  }

  Future<Either<Failure, double>> newReview(List<Review> newReviews) async {
    try {
      final firebaseUser = await _getFirebaseUser();
      final userData = (await firebaseUser.get()).data;
      final List reviews = userData['reviews'];

      reviews.addAll(newReviews.map((e) => e.toJson()).toList());
      await firebaseUser.updateData(
        {
          'reviews': reviews,
        },
      );

      return right(reviews.fold(
          0.0, (previousValue, element) => previousValue + element['point']));
    } catch (e) {
      print(e.toString());
      return left(
        Failure.serverFailure(
          e.toString(),
        ),
      );
    }
  }

  Future<DocumentReference> _getFirebaseUser() async {
    return Firestore.instance.collection('users').document('1');
  }
}
