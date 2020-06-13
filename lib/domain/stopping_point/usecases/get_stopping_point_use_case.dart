import 'package:ccr/domain/common/failures.dart';
import 'package:ccr/domain/stopping_point/models/stopping_point.dart';
import 'package:ccr/domain/stopping_point/repository/i_stopping_point_repository.dart';
import 'package:ccr/domain/stopping_point/usecases/i_get_stopping_point_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IGetStoppingPointUseCase)
class GetStoppingPointUseCase implements IGetStoppingPointUseCase {
  final IStoppingPointRepository stoppingPointRepository;

  const GetStoppingPointUseCase(this.stoppingPointRepository);

  @override
  Future<Either<Failure, List<StoppingPoint>>> call() =>
      stoppingPointRepository.getStoppingPoints();
}
