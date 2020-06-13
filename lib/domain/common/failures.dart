import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failure<T> with _$Failure<T> {
  const factory Failure.empty({T failedValue}) = Empty<T>;
  const factory Failure.unexpectedValue({@required T failedValue}) =
      UnexpectedValue<T>;
  const factory Failure.serverFailure(String error) = ServerFailure<T>;
}
