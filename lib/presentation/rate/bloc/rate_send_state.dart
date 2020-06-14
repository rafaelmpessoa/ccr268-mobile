part of 'rate_send_bloc.dart';

@freezed
abstract class RateSendState with _$RateSendState {
  const factory RateSendState.initial() = RateSendInitial;
  const factory RateSendState.error(String error) = RateSendError;
  const factory RateSendState.loaded(double total) = RateSendLoaded;
  const factory RateSendState.loading() = RateSendLoading;
}
