import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ccr/domain/stopping_point/usecases/i_get_stopping_point_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';

part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IGetStoppingPointUseCase getStoppingPointUseCase;

  HomeBloc(this.getStoppingPointUseCase);

  @override
  HomeState get initialState => HomeInitial();

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    await getStoppingPointUseCase();
  }
}
