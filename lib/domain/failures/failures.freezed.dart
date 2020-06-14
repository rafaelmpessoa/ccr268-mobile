// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FailureTearOff {
  const _$FailureTearOff();

  Empty<T> empty<T>({T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

  UnexpectedValue<T> unexpectedValue<T>({@required T failedValue}) {
    return UnexpectedValue<T>(
      failedValue: failedValue,
    );
  }

  ServerFailure<T> serverFailure<T>(String error) {
    return ServerFailure<T>(
      error,
    );
  }
}

// ignore: unused_element
const $Failure = _$FailureTearOff();

mixin _$Failure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(T failedValue),
    @required Result unexpectedValue(T failedValue),
    @required Result serverFailure(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(T failedValue),
    Result unexpectedValue(T failedValue),
    Result serverFailure(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(Empty<T> value),
    @required Result unexpectedValue(UnexpectedValue<T> value),
    @required Result serverFailure(ServerFailure<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(Empty<T> value),
    Result unexpectedValue(UnexpectedValue<T> value),
    Result serverFailure(ServerFailure<T> value),
    @required Result orElse(),
  });
}

abstract class $FailureCopyWith<T, $Res> {
  factory $FailureCopyWith(Failure<T> value, $Res Function(Failure<T>) then) =
      _$FailureCopyWithImpl<T, $Res>;
}

class _$FailureCopyWithImpl<T, $Res> implements $FailureCopyWith<T, $Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure<T> _value;
  // ignore: unused_field
  final $Res Function(Failure<T>) _then;
}

abstract class $EmptyCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

class _$EmptyCopyWithImpl<T, $Res> extends _$FailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$Empty<T> implements Empty<T> {
  const _$Empty({this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'Failure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(T failedValue),
    @required Result unexpectedValue(T failedValue),
    @required Result serverFailure(String error),
  }) {
    assert(empty != null);
    assert(unexpectedValue != null);
    assert(serverFailure != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(T failedValue),
    Result unexpectedValue(T failedValue),
    Result serverFailure(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(Empty<T> value),
    @required Result unexpectedValue(UnexpectedValue<T> value),
    @required Result serverFailure(ServerFailure<T> value),
  }) {
    assert(empty != null);
    assert(unexpectedValue != null);
    assert(serverFailure != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(Empty<T> value),
    Result unexpectedValue(UnexpectedValue<T> value),
    Result serverFailure(ServerFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements Failure<T> {
  const factory Empty({T failedValue}) = _$Empty<T>;

  T get failedValue;
  $EmptyCopyWith<T, Empty<T>> get copyWith;
}

abstract class $UnexpectedValueCopyWith<T, $Res> {
  factory $UnexpectedValueCopyWith(
          UnexpectedValue<T> value, $Res Function(UnexpectedValue<T>) then) =
      _$UnexpectedValueCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

class _$UnexpectedValueCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res>
    implements $UnexpectedValueCopyWith<T, $Res> {
  _$UnexpectedValueCopyWithImpl(
      UnexpectedValue<T> _value, $Res Function(UnexpectedValue<T>) _then)
      : super(_value, (v) => _then(v as UnexpectedValue<T>));

  @override
  UnexpectedValue<T> get _value => super._value as UnexpectedValue<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(UnexpectedValue<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$UnexpectedValue<T> implements UnexpectedValue<T> {
  const _$UnexpectedValue({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'Failure<$T>.unexpectedValue(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnexpectedValue<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $UnexpectedValueCopyWith<T, UnexpectedValue<T>> get copyWith =>
      _$UnexpectedValueCopyWithImpl<T, UnexpectedValue<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(T failedValue),
    @required Result unexpectedValue(T failedValue),
    @required Result serverFailure(String error),
  }) {
    assert(empty != null);
    assert(unexpectedValue != null);
    assert(serverFailure != null);
    return unexpectedValue(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(T failedValue),
    Result unexpectedValue(T failedValue),
    Result serverFailure(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedValue != null) {
      return unexpectedValue(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(Empty<T> value),
    @required Result unexpectedValue(UnexpectedValue<T> value),
    @required Result serverFailure(ServerFailure<T> value),
  }) {
    assert(empty != null);
    assert(unexpectedValue != null);
    assert(serverFailure != null);
    return unexpectedValue(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(Empty<T> value),
    Result unexpectedValue(UnexpectedValue<T> value),
    Result serverFailure(ServerFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedValue != null) {
      return unexpectedValue(this);
    }
    return orElse();
  }
}

abstract class UnexpectedValue<T> implements Failure<T> {
  const factory UnexpectedValue({@required T failedValue}) =
      _$UnexpectedValue<T>;

  T get failedValue;
  $UnexpectedValueCopyWith<T, UnexpectedValue<T>> get copyWith;
}

abstract class $ServerFailureCopyWith<T, $Res> {
  factory $ServerFailureCopyWith(
          ServerFailure<T> value, $Res Function(ServerFailure<T>) then) =
      _$ServerFailureCopyWithImpl<T, $Res>;
  $Res call({String error});
}

class _$ServerFailureCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res>
    implements $ServerFailureCopyWith<T, $Res> {
  _$ServerFailureCopyWithImpl(
      ServerFailure<T> _value, $Res Function(ServerFailure<T>) _then)
      : super(_value, (v) => _then(v as ServerFailure<T>));

  @override
  ServerFailure<T> get _value => super._value as ServerFailure<T>;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ServerFailure<T>(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$ServerFailure<T> implements ServerFailure<T> {
  const _$ServerFailure(this.error) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'Failure<$T>.serverFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServerFailure<T> &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ServerFailureCopyWith<T, ServerFailure<T>> get copyWith =>
      _$ServerFailureCopyWithImpl<T, ServerFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(T failedValue),
    @required Result unexpectedValue(T failedValue),
    @required Result serverFailure(String error),
  }) {
    assert(empty != null);
    assert(unexpectedValue != null);
    assert(serverFailure != null);
    return serverFailure(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(T failedValue),
    Result unexpectedValue(T failedValue),
    Result serverFailure(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(Empty<T> value),
    @required Result unexpectedValue(UnexpectedValue<T> value),
    @required Result serverFailure(ServerFailure<T> value),
  }) {
    assert(empty != null);
    assert(unexpectedValue != null);
    assert(serverFailure != null);
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(Empty<T> value),
    Result unexpectedValue(UnexpectedValue<T> value),
    Result serverFailure(ServerFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure<T> implements Failure<T> {
  const factory ServerFailure(String error) = _$ServerFailure<T>;

  String get error;
  $ServerFailureCopyWith<T, ServerFailure<T>> get copyWith;
}
