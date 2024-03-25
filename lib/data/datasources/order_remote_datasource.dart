import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_restopos/core/constants/variables.dart';
import 'package:flutter_restopos/data/datasources/auth_local_datasource.dart';
import 'package:flutter_restopos/presentations/home/models/order_model.dart';
import 'package:flutter_restopos/presentations/reservation/models/reservation_response_model.dart';
import 'package:http/http.dart' as http;

class OrderRemoteDatasource {
  Future<bool> saveOrder(OrderModel orderModel) async {
    final authData = await AuthLocalDataSource().getAuthData();

    final response = await http.post(
        Uri.parse('${Variables.baseUrl}/api/saveOrder'),
        body: orderModel.toJson(),
        headers: {
          'Authorization': 'Bearer ${authData.token}',
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        });

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> saveOrderWithReservation(
      OrderModel orderModel, Reservation reservation) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}/api/saveOrder');
      final authData = await AuthLocalDataSource().getAuthData();

      final response = await http.post(
          Uri.parse('${Variables.baseUrl}/api/saveOrder'),
          body: orderModel.toJson(),
          headers: {
            'Authorization': 'Bearer ${authData.token}',
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          });

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print('Error during saveOrderWithReservation: $e');
      return false;
    }
  }
}
