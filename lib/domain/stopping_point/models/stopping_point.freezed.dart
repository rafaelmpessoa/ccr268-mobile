// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'stopping_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
StoppingPoint _$StoppingPointFromJson(Map<String, dynamic> json) {
  return _StoppingPoint.fromJson(json);
}

class _$StoppingPointTearOff {
  const _$StoppingPointTearOff();

  _StoppingPoint call({@required String name}) {
    return _StoppingPoint(
      name: name,
    );
  }
}

// ignore: unused_element
const $StoppingPoint = _$StoppingPointTearOff();

mixin _$StoppingPoint {
  String get name;

  Map<String, dynamic> toJson();
  $StoppingPointCopyWith<StoppingPoint> get copyWith;
}

abstract class $StoppingPointCopyWith<$Res> {
  factory $StoppingPointCopyWith(
          StoppingPoint value, $Res Function(StoppingPoint) then) =
      _$StoppingPointCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$StoppingPointCopyWithImpl<$Res>
    implements $StoppingPointCopyWith<$Res> {
  _$StoppingPointCopyWithImpl(this._value, this._then);

  final StoppingPoint _value;
  // ignore: unused_field
  final $Res Function(StoppingPoint) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$StoppingPointCopyWith<$Res>
    implements $StoppingPointCopyWith<$Res> {
  factory _$StoppingPointCopyWith(
          _StoppingPoint value, $Res Function(_StoppingPoint) then) =
      __$StoppingPointCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

class __$StoppingPointCopyWithImpl<$Res>
    extends _$StoppingPointCopyWithImpl<$Res>
    implements _$StoppingPointCopyWith<$Res> {
  __$StoppingPointCopyWithImpl(
      _StoppingPoint _value, $Res Function(_StoppingPoint) _then)
      : super(_value, (v) => _then(v as _StoppingPoint));

  @override
  _StoppingPoint get _value => super._value as _StoppingPoint;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_StoppingPoint(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()
class _$_StoppingPoint implements _StoppingPoint {
  const _$_StoppingPoint({@required this.name}) : assert(name != null);

  factory _$_StoppingPoint.fromJson(Map<String, dynamic> json) =>
      _$_$_StoppingPointFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'StoppingPoint(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoppingPoint &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$StoppingPointCopyWith<_StoppingPoint> get copyWith =>
      __$StoppingPointCopyWithImpl<_StoppingPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StoppingPointToJson(this);
  }
}

abstract class _StoppingPoint implements StoppingPoint {
  const factory _StoppingPoint({@required String name}) = _$_StoppingPoint;

  factory _StoppingPoint.fromJson(Map<String, dynamic> json) =
      _$_StoppingPoint.fromJson;

  @override
  String get name;
  @override
  _$StoppingPointCopyWith<_StoppingPoint> get copyWith;
}
