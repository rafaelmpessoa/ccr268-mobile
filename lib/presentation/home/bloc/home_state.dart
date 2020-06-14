part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitial;
  const factory HomeState.loading() = HomeLoading;
  const factory HomeState.loaded(
      User user, List<StoppingPoint> stoppingPoints) = HomeLoaded;
  const factory HomeState.error(String error) = HomeError;
}
