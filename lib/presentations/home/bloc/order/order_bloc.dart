import 'package:bloc/bloc.dart';
import 'package:flutter_restopos/presentations/home/models/product_quantity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(_Initial()) {
    on<OrderEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
