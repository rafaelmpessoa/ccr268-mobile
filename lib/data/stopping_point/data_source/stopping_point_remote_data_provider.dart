import 'package:ccr/domain/common/error.dart';
import 'package:ccr/domain/common/failures.dart';
import 'package:ccr/domain/stopping_point/models/stopping_point.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class StoppigPointRemoteDataProvider {
  Future<List<StoppingPoint>> getStoppingPoints() async {
    try {
      final result =
          await Firestore.instance.collection('stopping-point').getDocuments();

      return result.documents
          .map((e) => StoppingPoint.fromJson(e.data))
          .toList();
    } catch (e) {
      throw UnexpectedValueError(
        Failure.unexpectedValue(
          failedValue: e.toString(),
        ),
      );
    }
  }
}
