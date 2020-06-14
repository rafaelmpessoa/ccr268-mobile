part of 'rate_send_bloc.dart';

@freezed
abstract class RateSendEvent with _$RateSendEvent {
  const factory RateSendEvent.onSendPressed(List<Review> reviews) =
      RateSendOnSendPressed;
}
