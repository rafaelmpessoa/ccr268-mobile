import 'package:ccr/domain/common/failures.dart';

class ServerException implements Exception {
  final String error;

  ServerException(this.error);

  @override
  String toString() {
    return Error.safeToString(error);
  }
}

class UnexpectedValueError extends Error {
  final Failure failure;

  UnexpectedValueError(this.failure);

  @override
  String toString() {
    const explanation =
        'Encountered a failure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $failure');
  }
}
