// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  HomeFetchStoppingPoints fetchStoppingPoints() {
    return const HomeFetchStoppingPoints();
  }
}

// ignore: unused_element
const $HomeEvent = _$HomeEventTearOff();

mixin _$HomeEvent {}

abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

abstract class $HomeFetchStoppingPointsCopyWith<$Res> {
  factory $HomeFetchStoppingPointsCopyWith(HomeFetchStoppingPoints value,
          $Res Function(HomeFetchStoppingPoints) then) =
      _$HomeFetchStoppingPointsCopyWithImpl<$Res>;
}

class _$HomeFetchStoppingPointsCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $HomeFetchStoppingPointsCopyWith<$Res> {
  _$HomeFetchStoppingPointsCopyWithImpl(HomeFetchStoppingPoints _value,
      $Res Function(HomeFetchStoppingPoints) _then)
      : super(_value, (v) => _then(v as HomeFetchStoppingPoints));

  @override
  HomeFetchStoppingPoints get _value => super._value as HomeFetchStoppingPoints;
}

class _$HomeFetchStoppingPoints implements HomeFetchStoppingPoints {
  const _$HomeFetchStoppingPoints();

  @override
  String toString() {
    return 'HomeEvent.fetchStoppingPoints()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomeFetchStoppingPoints);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class HomeFetchStoppingPoints implements HomeEvent {
  const factory HomeFetchStoppingPoints() = _$HomeFetchStoppingPoints;
}

class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  HomeInitial initial() {
    return const HomeInitial();
  }
}

// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

mixin _$HomeState {}

abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

abstract class $HomeInitialCopyWith<$Res> {
  factory $HomeInitialCopyWith(
          HomeInitial value, $Res Function(HomeInitial) then) =
      _$HomeInitialCopyWithImpl<$Res>;
}

class _$HomeInitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeInitialCopyWith<$Res> {
  _$HomeInitialCopyWithImpl(
      HomeInitial _value, $Res Function(HomeInitial) _then)
      : super(_value, (v) => _then(v as HomeInitial));

  @override
  HomeInitial get _value => super._value as HomeInitial;
}

class _$HomeInitial implements HomeInitial {
  const _$HomeInitial();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomeInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class HomeInitial implements HomeState {
  const factory HomeInitial() = _$HomeInitial;
}
