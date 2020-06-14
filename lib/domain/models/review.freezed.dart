// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

class _$ReviewTearOff {
  const _$ReviewTearOff();

  _Review call(
      {@required double point,
      @required double ratting,
      @required ReviewType type,
      @required String stepName}) {
    return _Review(
      point: point,
      ratting: ratting,
      type: type,
      stepName: stepName,
    );
  }
}

// ignore: unused_element
const $Review = _$ReviewTearOff();

mixin _$Review {
  double get point;
  double get ratting;
  ReviewType get type;
  String get stepName;

  Map<String, dynamic> toJson();
  $ReviewCopyWith<Review> get copyWith;
}

abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res>;
  $Res call({double point, double ratting, ReviewType type, String stepName});
}

class _$ReviewCopyWithImpl<$Res> implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  final Review _value;
  // ignore: unused_field
  final $Res Function(Review) _then;

  @override
  $Res call({
    Object point = freezed,
    Object ratting = freezed,
    Object type = freezed,
    Object stepName = freezed,
  }) {
    return _then(_value.copyWith(
      point: point == freezed ? _value.point : point as double,
      ratting: ratting == freezed ? _value.ratting : ratting as double,
      type: type == freezed ? _value.type : type as ReviewType,
      stepName: stepName == freezed ? _value.stepName : stepName as String,
    ));
  }
}

abstract class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) then) =
      __$ReviewCopyWithImpl<$Res>;
  @override
  $Res call({double point, double ratting, ReviewType type, String stepName});
}

class __$ReviewCopyWithImpl<$Res> extends _$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(_Review _value, $Res Function(_Review) _then)
      : super(_value, (v) => _then(v as _Review));

  @override
  _Review get _value => super._value as _Review;

  @override
  $Res call({
    Object point = freezed,
    Object ratting = freezed,
    Object type = freezed,
    Object stepName = freezed,
  }) {
    return _then(_Review(
      point: point == freezed ? _value.point : point as double,
      ratting: ratting == freezed ? _value.ratting : ratting as double,
      type: type == freezed ? _value.type : type as ReviewType,
      stepName: stepName == freezed ? _value.stepName : stepName as String,
    ));
  }
}

@JsonSerializable()
class _$_Review implements _Review {
  const _$_Review(
      {@required this.point,
      @required this.ratting,
      @required this.type,
      @required this.stepName})
      : assert(point != null),
        assert(ratting != null),
        assert(type != null),
        assert(stepName != null);

  factory _$_Review.fromJson(Map<String, dynamic> json) =>
      _$_$_ReviewFromJson(json);

  @override
  final double point;
  @override
  final double ratting;
  @override
  final ReviewType type;
  @override
  final String stepName;

  @override
  String toString() {
    return 'Review(point: $point, ratting: $ratting, type: $type, stepName: $stepName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Review &&
            (identical(other.point, point) ||
                const DeepCollectionEquality().equals(other.point, point)) &&
            (identical(other.ratting, ratting) ||
                const DeepCollectionEquality()
                    .equals(other.ratting, ratting)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.stepName, stepName) ||
                const DeepCollectionEquality()
                    .equals(other.stepName, stepName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(point) ^
      const DeepCollectionEquality().hash(ratting) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(stepName);

  @override
  _$ReviewCopyWith<_Review> get copyWith =>
      __$ReviewCopyWithImpl<_Review>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReviewToJson(this);
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {@required double point,
      @required double ratting,
      @required ReviewType type,
      @required String stepName}) = _$_Review;

  factory _Review.fromJson(Map<String, dynamic> json) = _$_Review.fromJson;

  @override
  double get point;
  @override
  double get ratting;
  @override
  ReviewType get type;
  @override
  String get stepName;
  @override
  _$ReviewCopyWith<_Review> get copyWith;
}
