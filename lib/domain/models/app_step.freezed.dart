// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'app_step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AppStep _$AppStepFromJson(Map<String, dynamic> json) {
  return _AppStep.fromJson(json);
}

class _$AppStepTearOff {
  const _$AppStepTearOff();

  _AppStep call(
      {@required String name,
      String description,
      @required double points,
      @required double index,
      @required String imgPath,
      @required ReviewType reviewType}) {
    return _AppStep(
      name: name,
      description: description,
      points: points,
      index: index,
      imgPath: imgPath,
      reviewType: reviewType,
    );
  }
}

// ignore: unused_element
const $AppStep = _$AppStepTearOff();

mixin _$AppStep {
  String get name;
  String get description;
  double get points;
  double get index;
  String get imgPath;
  ReviewType get reviewType;

  Map<String, dynamic> toJson();
  $AppStepCopyWith<AppStep> get copyWith;
}

abstract class $AppStepCopyWith<$Res> {
  factory $AppStepCopyWith(AppStep value, $Res Function(AppStep) then) =
      _$AppStepCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String description,
      double points,
      double index,
      String imgPath,
      ReviewType reviewType});
}

class _$AppStepCopyWithImpl<$Res> implements $AppStepCopyWith<$Res> {
  _$AppStepCopyWithImpl(this._value, this._then);

  final AppStep _value;
  // ignore: unused_field
  final $Res Function(AppStep) _then;

  @override
  $Res call({
    Object name = freezed,
    Object description = freezed,
    Object points = freezed,
    Object index = freezed,
    Object imgPath = freezed,
    Object reviewType = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      points: points == freezed ? _value.points : points as double,
      index: index == freezed ? _value.index : index as double,
      imgPath: imgPath == freezed ? _value.imgPath : imgPath as String,
      reviewType:
          reviewType == freezed ? _value.reviewType : reviewType as ReviewType,
    ));
  }
}

abstract class _$AppStepCopyWith<$Res> implements $AppStepCopyWith<$Res> {
  factory _$AppStepCopyWith(_AppStep value, $Res Function(_AppStep) then) =
      __$AppStepCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String description,
      double points,
      double index,
      String imgPath,
      ReviewType reviewType});
}

class __$AppStepCopyWithImpl<$Res> extends _$AppStepCopyWithImpl<$Res>
    implements _$AppStepCopyWith<$Res> {
  __$AppStepCopyWithImpl(_AppStep _value, $Res Function(_AppStep) _then)
      : super(_value, (v) => _then(v as _AppStep));

  @override
  _AppStep get _value => super._value as _AppStep;

  @override
  $Res call({
    Object name = freezed,
    Object description = freezed,
    Object points = freezed,
    Object index = freezed,
    Object imgPath = freezed,
    Object reviewType = freezed,
  }) {
    return _then(_AppStep(
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      points: points == freezed ? _value.points : points as double,
      index: index == freezed ? _value.index : index as double,
      imgPath: imgPath == freezed ? _value.imgPath : imgPath as String,
      reviewType:
          reviewType == freezed ? _value.reviewType : reviewType as ReviewType,
    ));
  }
}

@JsonSerializable()
class _$_AppStep implements _AppStep {
  const _$_AppStep(
      {@required this.name,
      this.description,
      @required this.points,
      @required this.index,
      @required this.imgPath,
      @required this.reviewType})
      : assert(name != null),
        assert(points != null),
        assert(index != null),
        assert(imgPath != null),
        assert(reviewType != null);

  factory _$_AppStep.fromJson(Map<String, dynamic> json) =>
      _$_$_AppStepFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final double points;
  @override
  final double index;
  @override
  final String imgPath;
  @override
  final ReviewType reviewType;

  @override
  String toString() {
    return 'AppStep(name: $name, description: $description, points: $points, index: $index, imgPath: $imgPath, reviewType: $reviewType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppStep &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.imgPath, imgPath) ||
                const DeepCollectionEquality()
                    .equals(other.imgPath, imgPath)) &&
            (identical(other.reviewType, reviewType) ||
                const DeepCollectionEquality()
                    .equals(other.reviewType, reviewType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(points) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(imgPath) ^
      const DeepCollectionEquality().hash(reviewType);

  @override
  _$AppStepCopyWith<_AppStep> get copyWith =>
      __$AppStepCopyWithImpl<_AppStep>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppStepToJson(this);
  }
}

abstract class _AppStep implements AppStep {
  const factory _AppStep(
      {@required String name,
      String description,
      @required double points,
      @required double index,
      @required String imgPath,
      @required ReviewType reviewType}) = _$_AppStep;

  factory _AppStep.fromJson(Map<String, dynamic> json) = _$_AppStep.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  double get points;
  @override
  double get index;
  @override
  String get imgPath;
  @override
  ReviewType get reviewType;
  @override
  _$AppStepCopyWith<_AppStep> get copyWith;
}
