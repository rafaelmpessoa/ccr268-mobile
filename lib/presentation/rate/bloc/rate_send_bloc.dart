import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ccr/data/repository/stopping_point_repository.dart';
import 'package:ccr/domain/models/review.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'rate_send_event.dart';
part 'rate_send_state.dart';

part 'rate_send_bloc.freezed.dart';

@injectable
class RateSendBloc extends Bloc<RateSendEvent, RateSendState> {
  final Repository repository;

  RateSendBloc(this.repository);
  @override
  RateSendState get initialState => RateSendInitial();

  @override
  Stream<RateSendState> mapEventToState(
    RateSendEvent event,
  ) async* {
    yield RateSendState.loading();
    final result = await repository.newReview(event.reviews);
    yield* result.fold(
      (l) async* {
        yield RateSendError("Erro interno no servidor");
      },
      (r) async* {
        yield RateSendLoaded(r);
      },
    );
  }
}
