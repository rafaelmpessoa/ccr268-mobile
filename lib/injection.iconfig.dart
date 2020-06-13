// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:ccr/data/stopping_point/data_source/stopping_point_remote_data_provider.dart';
import 'package:ccr/data/stopping_point/repository/stopping_point_repository.dart';
import 'package:ccr/domain/stopping_point/repository/i_stopping_point_repository.dart';
import 'package:ccr/domain/stopping_point/usecases/get_stopping_point_use_case.dart';
import 'package:ccr/domain/stopping_point/usecases/i_get_stopping_point_use_case.dart';
import 'package:ccr/presentation/home/bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerLazySingleton<StoppigPointRemoteDataProvider>(
      () => StoppigPointRemoteDataProvider());
  g.registerLazySingleton<IStoppingPointRepository>(
      () => StoppingPointRepository(g<StoppigPointRemoteDataProvider>()));
  g.registerLazySingleton<IGetStoppingPointUseCase>(
      () => GetStoppingPointUseCase(g<IStoppingPointRepository>()));
  g.registerFactory<HomeBloc>(() => HomeBloc(g<IGetStoppingPointUseCase>()));
}
