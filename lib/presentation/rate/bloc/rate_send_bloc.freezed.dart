// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'rate_send_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RateSendEventTearOff {
  const _$RateSendEventTearOff();

  RateSendOnSendPressed onSendPressed(List<Review> reviews) {
    return RateSendOnSendPressed(
      reviews,
    );
  }
}

// ignore: unused_element
const $RateSendEvent = _$RateSendEventTearOff();

mixin _$RateSendEvent {
  List<Review> get reviews;

  $RateSendEventCopyWith<RateSendEvent> get copyWith;
}

abstract class $RateSendEventCopyWith<$Res> {
  factory $RateSendEventCopyWith(
          RateSendEvent value, $Res Function(RateSendEvent) then) =
      _$RateSendEventCopyWithImpl<$Res>;
  $Res call({List<Review> reviews});
}

class _$RateSendEventCopyWithImpl<$Res>
    implements $RateSendEventCopyWith<$Res> {
  _$RateSendEventCopyWithImpl(this._value, this._then);

  final RateSendEvent _value;
  // ignore: unused_field
  final $Res Function(RateSendEvent) _then;

  @override
  $Res call({
    Object reviews = freezed,
  }) {
    return _then(_value.copyWith(
      reviews: reviews == freezed ? _value.reviews : reviews as List<Review>,
    ));
  }
}

abstract class $RateSendOnSendPressedCopyWith<$Res>
    implements $RateSendEventCopyWith<$Res> {
  factory $RateSendOnSendPressedCopyWith(RateSendOnSendPressed value,
          $Res Function(RateSendOnSendPressed) then) =
      _$RateSendOnSendPressedCopyWithImpl<$Res>;
  @override
  $Res call({List<Review> reviews});
}

class _$RateSendOnSendPressedCopyWithImpl<$Res>
    extends _$RateSendEventCopyWithImpl<$Res>
    implements $RateSendOnSendPressedCopyWith<$Res> {
  _$RateSendOnSendPressedCopyWithImpl(
      RateSendOnSendPressed _value, $Res Function(RateSendOnSendPressed) _then)
      : super(_value, (v) => _then(v as RateSendOnSendPressed));

  @override
  RateSendOnSendPressed get _value => super._value as RateSendOnSendPressed;

  @override
  $Res call({
    Object reviews = freezed,
  }) {
    return _then(RateSendOnSendPressed(
      reviews == freezed ? _value.reviews : reviews as List<Review>,
    ));
  }
}

class _$RateSendOnSendPressed implements RateSendOnSendPressed {
  const _$RateSendOnSendPressed(this.reviews) : assert(reviews != null);

  @override
  final List<Review> reviews;

  @override
  String toString() {
    return 'RateSendEvent.onSendPressed(reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RateSendOnSendPressed &&
            (identical(other.reviews, reviews) ||
                const DeepCollectionEquality().equals(other.reviews, reviews)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reviews);

  @override
  $RateSendOnSendPressedCopyWith<RateSendOnSendPressed> get copyWith =>
      _$RateSendOnSendPressedCopyWithImpl<RateSendOnSendPressed>(
          this, _$identity);
}

abstract class RateSendOnSendPressed implements RateSendEvent {
  const factory RateSendOnSendPressed(List<Review> reviews) =
      _$RateSendOnSendPressed;

  @override
  List<Review> get reviews;
  @override
  $RateSendOnSendPressedCopyWith<RateSendOnSendPressed> get copyWith;
}

class _$RateSendStateTearOff {
  const _$RateSendStateTearOff();

  RateSendInitial initial() {
    return const RateSendInitial();
  }

  RateSendError error(String error) {
    return RateSendError(
      error,
    );
  }

  RateSendLoaded loaded(double total) {
    return RateSendLoaded(
      total,
    );
  }

  RateSendLoading loading() {
    return const RateSendLoading();
  }
}

// ignore: unused_element
const $RateSendState = _$RateSendStateTearOff();

mixin _$RateSendState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result error(String error),
    @required Result loaded(double total),
    @required Result loading(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result error(String error),
    Result loaded(double total),
    Result loading(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(RateSendInitial value),
    @required Result error(RateSendError value),
    @required Result loaded(RateSendLoaded value),
    @required Result loading(RateSendLoading value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(RateSendInitial value),
    Result error(RateSendError value),
    Result loaded(RateSendLoaded value),
    Result loading(RateSendLoading value),
    @required Result orElse(),
  });
}

abstract class $RateSendStateCopyWith<$Res> {
  factory $RateSendStateCopyWith(
          RateSendState value, $Res Function(RateSendState) then) =
      _$RateSendStateCopyWithImpl<$Res>;
}

class _$RateSendStateCopyWithImpl<$Res>
    implements $RateSendStateCopyWith<$Res> {
  _$RateSendStateCopyWithImpl(this._value, this._then);

  final RateSendState _value;
  // ignore: unused_field
  final $Res Function(RateSendState) _then;
}

abstract class $RateSendInitialCopyWith<$Res> {
  factory $RateSendInitialCopyWith(
          RateSendInitial value, $Res Function(RateSendInitial) then) =
      _$RateSendInitialCopyWithImpl<$Res>;
}

class _$RateSendInitialCopyWithImpl<$Res>
    extends _$RateSendStateCopyWithImpl<$Res>
    implements $RateSendInitialCopyWith<$Res> {
  _$RateSendInitialCopyWithImpl(
      RateSendInitial _value, $Res Function(RateSendInitial) _then)
      : super(_value, (v) => _then(v as RateSendInitial));

  @override
  RateSendInitial get _value => super._value as RateSendInitial;
}

class _$RateSendInitial implements RateSendInitial {
  const _$RateSendInitial();

  @override
  String toString() {
    return 'RateSendState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RateSendInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result error(String error),
    @required Result loaded(double total),
    @required Result loading(),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loaded != null);
    assert(loading != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result error(String error),
    Result loaded(double total),
    Result loading(),
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
    @required Result initial(RateSendInitial value),
    @required Result error(RateSendError value),
    @required Result loaded(RateSendLoaded value),
    @required Result loading(RateSendLoading value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loaded != null);
    assert(loading != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(RateSendInitial value),
    Result error(RateSendError value),
    Result loaded(RateSendLoaded value),
    Result loading(RateSendLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RateSendInitial implements RateSendState {
  const factory RateSendInitial() = _$RateSendInitial;
}

abstract class $RateSendErrorCopyWith<$Res> {
  factory $RateSendErrorCopyWith(
          RateSendError value, $Res Function(RateSendError) then) =
      _$RateSendErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$RateSendErrorCopyWithImpl<$Res>
    extends _$RateSendStateCopyWithImpl<$Res>
    implements $RateSendErrorCopyWith<$Res> {
  _$RateSendErrorCopyWithImpl(
      RateSendError _value, $Res Function(RateSendError) _then)
      : super(_value, (v) => _then(v as RateSendError));

  @override
  RateSendError get _value => super._value as RateSendError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(RateSendError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$RateSendError implements RateSendError {
  const _$RateSendError(this.error) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'RateSendState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RateSendError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $RateSendErrorCopyWith<RateSendError> get copyWith =>
      _$RateSendErrorCopyWithImpl<RateSendError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result error(String error),
    @required Result loaded(double total),
    @required Result loading(),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loaded != null);
    assert(loading != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result error(String error),
    Result loaded(double total),
    Result loading(),
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
    @required Result initial(RateSendInitial value),
    @required Result error(RateSendError value),
    @required Result loaded(RateSendLoaded value),
    @required Result loading(RateSendLoading value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loaded != null);
    assert(loading != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(RateSendInitial value),
    Result error(RateSendError value),
    Result loaded(RateSendLoaded value),
    Result loading(RateSendLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RateSendError implements RateSendState {
  const factory RateSendError(String error) = _$RateSendError;

  String get error;
  $RateSendErrorCopyWith<RateSendError> get copyWith;
}

abstract class $RateSendLoadedCopyWith<$Res> {
  factory $RateSendLoadedCopyWith(
          RateSendLoaded value, $Res Function(RateSendLoaded) then) =
      _$RateSendLoadedCopyWithImpl<$Res>;
  $Res call({double total});
}

class _$RateSendLoadedCopyWithImpl<$Res>
    extends _$RateSendStateCopyWithImpl<$Res>
    implements $RateSendLoadedCopyWith<$Res> {
  _$RateSendLoadedCopyWithImpl(
      RateSendLoaded _value, $Res Function(RateSendLoaded) _then)
      : super(_value, (v) => _then(v as RateSendLoaded));

  @override
  RateSendLoaded get _value => super._value as RateSendLoaded;

  @override
  $Res call({
    Object total = freezed,
  }) {
    return _then(RateSendLoaded(
      total == freezed ? _value.total : total as double,
    ));
  }
}

class _$RateSendLoaded implements RateSendLoaded {
  const _$RateSendLoaded(this.total) : assert(total != null);

  @override
  final double total;

  @override
  String toString() {
    return 'RateSendState.loaded(total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RateSendLoaded &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(total);

  @override
  $RateSendLoadedCopyWith<RateSendLoaded> get copyWith =>
      _$RateSendLoadedCopyWithImpl<RateSendLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result error(String error),
    @required Result loaded(double total),
    @required Result loading(),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loaded != null);
    assert(loading != null);
    return loaded(total);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result error(String error),
    Result loaded(double total),
    Result loading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(RateSendInitial value),
    @required Result error(RateSendError value),
    @required Result loaded(RateSendLoaded value),
    @required Result loading(RateSendLoading value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loaded != null);
    assert(loading != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(RateSendInitial value),
    Result error(RateSendError value),
    Result loaded(RateSendLoaded value),
    Result loading(RateSendLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RateSendLoaded implements RateSendState {
  const factory RateSendLoaded(double total) = _$RateSendLoaded;

  double get total;
  $RateSendLoadedCopyWith<RateSendLoaded> get copyWith;
}

abstract class $RateSendLoadingCopyWith<$Res> {
  factory $RateSendLoadingCopyWith(
          RateSendLoading value, $Res Function(RateSendLoading) then) =
      _$RateSendLoadingCopyWithImpl<$Res>;
}

class _$RateSendLoadingCopyWithImpl<$Res>
    extends _$RateSendStateCopyWithImpl<$Res>
    implements $RateSendLoadingCopyWith<$Res> {
  _$RateSendLoadingCopyWithImpl(
      RateSendLoading _value, $Res Function(RateSendLoading) _then)
      : super(_value, (v) => _then(v as RateSendLoading));

  @override
  RateSendLoading get _value => super._value as RateSendLoading;
}

class _$RateSendLoading implements RateSendLoading {
  const _$RateSendLoading();

  @override
  String toString() {
    return 'RateSendState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RateSendLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result error(String error),
    @required Result loaded(double total),
    @required Result loading(),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loaded != null);
    assert(loading != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result error(String error),
    Result loaded(double total),
    Result loading(),
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
    @required Result initial(RateSendInitial value),
    @required Result error(RateSendError value),
    @required Result loaded(RateSendLoaded value),
    @required Result loading(RateSendLoading value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loaded != null);
    assert(loading != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(RateSendInitial value),
    Result error(RateSendError value),
    Result loaded(RateSendLoaded value),
    Result loading(RateSendLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RateSendLoading implements RateSendState {
  const factory RateSendLoading() = _$RateSendLoading;
}
