part of 'reservation_data_bloc.dart';

@freezed
class ReservationDataEvent with _$ReservationDataEvent {
  const factory ReservationDataEvent.started() = _Started;
  const factory ReservationDataEvent.submitReservation(Reservation reservation) = _SubmitReservation;
  const factory ReservationDataEvent.saveTemporaryData(String nama)

}