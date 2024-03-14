import 'package:dartz/dartz.dart';
import 'package:flutter_restopos/core/constants/variables.dart';
import 'package:flutter_restopos/data/datasources/auth_local_datasource.dart';
import 'package:flutter_restopos/data/models/response/discount_response_model.dart';
import 'package:http/http.dart' as http;

class DiscountRemoteDatasource {
  Future<Either<String, DiscountResponseModel>> getDiscounts() async {
    final url = Uri.parse('${Variables.baseUrl}/api/getDiscounts');

    final authData = await AuthLocalDataSource().getAuthData();

    final response = await http.get(url, headers: {
      'Authorization': 'Bearer ${authData.token}',
      'Accept': 'application/json',
    });

    if (response.statusCode == 200) {
      return Right(DiscountResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to get data');
    }
  }

  // add discount

  Future<Either<String, bool>> addDiscount(
      String name, String description, int value) async {
    final url = Uri.parse('${Variables.baseUrl}/api/saveDiscount');
    final authData = await AuthLocalDataSource().getAuthData();
    final response = await http.post(url, headers: {
      'Authorization': 'Bearer ${authData.token}',
      'Accept': 'application/json',
    }, body: {
      'name': name,
      'description': description,
      'value': value.toString(),
      'type': 'percentage',
    });

    if (response.statusCode == 200) {
      return const Right(true);
    } else {
      return const Left('Failed to add discount');
    }
  }
}
