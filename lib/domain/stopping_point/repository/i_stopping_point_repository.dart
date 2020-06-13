import 'package:ccr/domain/common/failures.dart';
import 'package:ccr/domain/stopping_point/models/stopping_point.dart';
import 'package:dartz/dartz.dart';

abstract class IStoppingPointRepository {
  Future<Either<Failure, List<StoppingPoint>>> getStoppingPoints();
}
