import 'dart:convert';

import 'package:flutter_restopos/presentations/home/models/product_quantity.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class OrderModel {
  final int? id;
  final int paymentAmount;
  final int subTotal;
  final int tax;
  final int discount;
  final int serviceCharge;
  final int total;
  final String paymentMethod;
  final int totalItem;
  final int idKasir;
  final String namaKasir;
  final String transactionTime;
  final int isSync;
  final List<ProductQuantity>  orderItems;
  
  
  OrderModel({
    this.id,
    required this.paymentAmount,
    required this.subTotal,
    required this.tax,
    required this.discount,
    required this.serviceCharge,
    required this.total,
    required this.paymentMethod,
    required this.totalItem,
    required this.idKasir,
    required this.namaKasir,
    required this.transactionTime,
    required this.isSync,
    required this.orderItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'payment_amount': paymentAmount,
      'sub_total': subTotal,
      'tax': tax,
      'discount': discount,
      'service_charge': serviceCharge,
      'total': total,
      'payment_method': paymentMethod,
      'totalItem': totalItem,
      'id_kasir': idKasir,
      'nama_kasir': namaKasir,
      'transaction_time': transactionTime,
      'is_sync': isSync,
      
    };
  }

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      id: map['id'] != null ? map['id'] as int : null,
      paymentAmount: map['payment_amount'] as int,
      subTotal: map['sub_total'] as int,
      tax: map['tax'] as int,
      discount: map['discount'] as int,
      serviceCharge: map['service_charge'] as int,
      total: map['total'] as int,
      paymentMethod: map['payment_method'] as String,
      totalItem: map['total_item'] as int,
      idKasir: map['id_kasir'] as int,
      namaKasir: map['nama_kasir'] as String,
      transactionTime: map['transaction_time'] as String,
      isSync: map['is_sync'] as int, 
      orderItems: [],
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderModel.fromJson(String source) => OrderModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
