// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:ccr/data/repository/stopping_point_repository.dart';
import 'package:ccr/presentation/home/bloc/home_bloc.dart';
import 'package:ccr/presentation/rate/bloc/rate_send_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerLazySingleton<Repository>(() => Repository());
  g.registerFactory<HomeBloc>(() => HomeBloc(g<Repository>()));
  g.registerFactory<RateSendBloc>(() => RateSendBloc(g<Repository>()));
}
