part of 'reservation_data_bloc.dart';

@freezed
class ReservationDataState with _$ReservationDataState {
  const factory ReservationDataState.initial() = _Initial;
  const factory ReservationDataState.loading() = _Loading;
  const factory ReservationDataState.loaded(
      String customerName,
      String customerPhone,
      String reservationDate,
      String reservationTime,
      String notes,
      String status,
      String tableNumber) = _Loaded;
  const factory ReservationDataState.error(String message) = _Error;
}
