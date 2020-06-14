// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  HomeOnOpenPage onOpenPage() {
    return const HomeOnOpenPage();
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

abstract class $HomeOnOpenPageCopyWith<$Res> {
  factory $HomeOnOpenPageCopyWith(
          HomeOnOpenPage value, $Res Function(HomeOnOpenPage) then) =
      _$HomeOnOpenPageCopyWithImpl<$Res>;
}

class _$HomeOnOpenPageCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $HomeOnOpenPageCopyWith<$Res> {
  _$HomeOnOpenPageCopyWithImpl(
      HomeOnOpenPage _value, $Res Function(HomeOnOpenPage) _then)
      : super(_value, (v) => _then(v as HomeOnOpenPage));

  @override
  HomeOnOpenPage get _value => super._value as HomeOnOpenPage;
}

class _$HomeOnOpenPage implements HomeOnOpenPage {
  const _$HomeOnOpenPage();

  @override
  String toString() {
    return 'HomeEvent.onOpenPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomeOnOpenPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class HomeOnOpenPage implements HomeEvent {
  const factory HomeOnOpenPage() = _$HomeOnOpenPage;
}

class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  HomeInitial initial() {
    return const HomeInitial();
  }

  HomeLoading loading() {
    return const HomeLoading();
  }

  HomeLoaded loaded(User user, List<StoppingPoint> stoppingPoints) {
    return HomeLoaded(
      user,
      stoppingPoints,
    );
  }

  HomeError error(String error) {
    return HomeError(
      error,
    );
  }
}

// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

mixin _$HomeState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(User user, List<StoppingPoint> stoppingPoints),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(User user, List<StoppingPoint> stoppingPoints),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(HomeInitial value),
    @required Result loading(HomeLoading value),
    @required Result loaded(HomeLoaded value),
    @required Result error(HomeError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(HomeInitial value),
    Result loading(HomeLoading value),
    Result loaded(HomeLoaded value),
    Result error(HomeError value),
    @required Result orElse(),
  });
}

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

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(User user, List<StoppingPoint> stoppingPoints),
    @required Result error(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(User user, List<StoppingPoint> stoppingPoints),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(HomeInitial value),
    @required Result loading(HomeLoading value),
    @required Result loaded(HomeLoaded value),
    @required Result error(HomeError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(HomeInitial value),
    Result loading(HomeLoading value),
    Result loaded(HomeLoaded value),
    Result error(HomeError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeInitial implements HomeState {
  const factory HomeInitial() = _$HomeInitial;
}

abstract class $HomeLoadingCopyWith<$Res> {
  factory $HomeLoadingCopyWith(
          HomeLoading value, $Res Function(HomeLoading) then) =
      _$HomeLoadingCopyWithImpl<$Res>;
}

class _$HomeLoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeLoadingCopyWith<$Res> {
  _$HomeLoadingCopyWithImpl(
      HomeLoading _value, $Res Function(HomeLoading) _then)
      : super(_value, (v) => _then(v as HomeLoading));

  @override
  HomeLoading get _value => super._value as HomeLoading;
}

class _$HomeLoading implements HomeLoading {
  const _$HomeLoading();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomeLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(User user, List<StoppingPoint> stoppingPoints),
    @required Result error(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(User user, List<StoppingPoint> stoppingPoints),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(HomeInitial value),
    @required Result loading(HomeLoading value),
    @required Result loaded(HomeLoaded value),
    @required Result error(HomeError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(HomeInitial value),
    Result loading(HomeLoading value),
    Result loaded(HomeLoaded value),
    Result error(HomeError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeLoading implements HomeState {
  const factory HomeLoading() = _$HomeLoading;
}

abstract class $HomeLoadedCopyWith<$Res> {
  factory $HomeLoadedCopyWith(
          HomeLoaded value, $Res Function(HomeLoaded) then) =
      _$HomeLoadedCopyWithImpl<$Res>;
  $Res call({User user, List<StoppingPoint> stoppingPoints});

  $UserCopyWith<$Res> get user;
}

class _$HomeLoadedCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeLoadedCopyWith<$Res> {
  _$HomeLoadedCopyWithImpl(HomeLoaded _value, $Res Function(HomeLoaded) _then)
      : super(_value, (v) => _then(v as HomeLoaded));

  @override
  HomeLoaded get _value => super._value as HomeLoaded;

  @override
  $Res call({
    Object user = freezed,
    Object stoppingPoints = freezed,
  }) {
    return _then(HomeLoaded(
      user == freezed ? _value.user : user as User,
      stoppingPoints == freezed
          ? _value.stoppingPoints
          : stoppingPoints as List<StoppingPoint>,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

class _$HomeLoaded implements HomeLoaded {
  const _$HomeLoaded(this.user, this.stoppingPoints)
      : assert(user != null),
        assert(stoppingPoints != null);

  @override
  final User user;
  @override
  final List<StoppingPoint> stoppingPoints;

  @override
  String toString() {
    return 'HomeState.loaded(user: $user, stoppingPoints: $stoppingPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HomeLoaded &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.stoppingPoints, stoppingPoints) ||
                const DeepCollectionEquality()
                    .equals(other.stoppingPoints, stoppingPoints)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(stoppingPoints);

  @override
  $HomeLoadedCopyWith<HomeLoaded> get copyWith =>
      _$HomeLoadedCopyWithImpl<HomeLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(User user, List<StoppingPoint> stoppingPoints),
    @required Result error(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(user, stoppingPoints);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(User user, List<StoppingPoint> stoppingPoints),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(user, stoppingPoints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(HomeInitial value),
    @required Result loading(HomeLoading value),
    @required Result loaded(HomeLoaded value),
    @required Result error(HomeError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(HomeInitial value),
    Result loading(HomeLoading value),
    Result loaded(HomeLoaded value),
    Result error(HomeError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HomeLoaded implements HomeState {
  const factory HomeLoaded(User user, List<StoppingPoint> stoppingPoints) =
      _$HomeLoaded;

  User get user;
  List<StoppingPoint> get stoppingPoints;
  $HomeLoadedCopyWith<HomeLoaded> get copyWith;
}

abstract class $HomeErrorCopyWith<$Res> {
  factory $HomeErrorCopyWith(HomeError value, $Res Function(HomeError) then) =
      _$HomeErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$HomeErrorCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeErrorCopyWith<$Res> {
  _$HomeErrorCopyWithImpl(HomeError _value, $Res Function(HomeError) _then)
      : super(_value, (v) => _then(v as HomeError));

  @override
  HomeError get _value => super._value as HomeError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(HomeError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$HomeError implements HomeError {
  const _$HomeError(this.error) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'HomeState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HomeError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $HomeErrorCopyWith<HomeError> get copyWith =>
      _$HomeErrorCopyWithImpl<HomeError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(User user, List<StoppingPoint> stoppingPoints),
    @required Result error(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(User user, List<StoppingPoint> stoppingPoints),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(HomeInitial value),
    @required Result loading(HomeLoading value),
    @required Result loaded(HomeLoaded value),
    @required Result error(HomeError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(HomeInitial value),
    Result loading(HomeLoading value),
    Result loaded(HomeLoaded value),
    Result error(HomeError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HomeError implements HomeState {
  const factory HomeError(String error) = _$HomeError;

  String get error;
  $HomeErrorCopyWith<HomeError> get copyWith;
}
