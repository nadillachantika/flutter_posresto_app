import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_restopos/presentations/reservation/models/reservation_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation_data_event.dart';
part 'reservation_data_state.dart';
part 'reservation_data_bloc.freezed.dart';

class ReservationDataBloc extends Bloc<ReservationDataEvent, ReservationDataState> {
  ReservationDataBloc() : super(_Initial()) {
    on<ReservationDataEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
