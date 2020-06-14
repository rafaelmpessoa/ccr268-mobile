import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

enum ReviewType { health, food, rest, sleep, services, bathroom }

@freezed
abstract class Review with _$Review {
  const factory Review({
    @required double point,
    @required double ratting,
    @required ReviewType type,
    @required String stepName,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
