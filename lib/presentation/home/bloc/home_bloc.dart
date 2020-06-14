import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ccr/data/repository/stopping_point_repository.dart';
import 'package:ccr/domain/models/stopping_point.dart';
import 'package:ccr/domain/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';

part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final Repository repository;

  HomeBloc(this.repository);

  @override
  HomeState get initialState => HomeInitial();

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield HomeLoading();

    final resultUser = await repository.getUser();

    yield* resultUser.fold(
      (l) async* {
        yield HomeError("Erro no servidor");
      },
      (user) async* {
        final resultStoppingPoint = await repository.getStoppingPoints();
        yield* resultStoppingPoint.fold(
          (l) async* {
            yield HomeError("Erro no servidor");
          },
          (stoppigPoints) async* {
            yield HomeLoaded(user, stoppigPoints);
          },
        );
      },
    );
  }
}
