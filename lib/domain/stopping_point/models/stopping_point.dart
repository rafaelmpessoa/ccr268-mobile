import 'package:freezed_annotation/freezed_annotation.dart';

part 'stopping_point.freezed.dart';
part 'stopping_point.g.dart';

@freezed
abstract class StoppingPoint with _$StoppingPoint {
  const factory StoppingPoint({@required String name}) = _StoppingPoint;

  factory StoppingPoint.fromJson(Map<String, dynamic> json) =>
      _$StoppingPointFromJson(json);
}
