import 'package:ccr/domain/models/review.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_step.freezed.dart';
part 'app_step.g.dart';

@freezed
abstract class AppStep with _$AppStep {
  const factory AppStep({
    @required String name,
    String description,
    @required double points,
    @required double index,
    @required String imgPath,
    @required ReviewType reviewType,
  }) = _AppStep;

  factory AppStep.fromJson(Map<String, dynamic> json) =>
      _$AppStepFromJson(json);
}
