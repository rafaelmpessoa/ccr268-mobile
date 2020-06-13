import 'package:ccr/data/stopping_point/data_source/stopping_point_remote_data_provider.dart';
import 'package:ccr/domain/common/error.dart';
import 'package:ccr/domain/common/failures.dart';
import 'package:ccr/domain/stopping_point/models/stopping_point.dart';
import 'package:ccr/domain/stopping_point/repository/i_stopping_point_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IStoppingPointRepository)
class StoppingPointRepository implements IStoppingPointRepository {
  final StoppigPointRemoteDataProvider stoppigPointRemoteDataProvider;

  const StoppingPointRepository(this.stoppigPointRemoteDataProvider);

  @override
  Future<Either<Failure, List<StoppingPoint>>> getStoppingPoints() async {
    try {
      return right(await stoppigPointRemoteDataProvider.getStoppingPoints());
    } on ServerException catch (e) {
      return left(
        ServerFailure(e.error),
      );
    }
  }
}
