import 'package:dartz/dartz.dart';
import 'package:flutter_restopos/core/constants/variables.dart';
import 'package:flutter_restopos/data/datasources/auth_local_datasource.dart';
import 'package:flutter_restopos/data/models/response/discount_response_model.dart';
import 'package:http/http.dart' as http;
class DiscountRemoteDatasource{

  Future<Either<String, DiscountResponseModel>> getDiscounts() async{
    final url = Uri.parse('${Variables.baseUrl}/api/getDiscount');
    final authData = await AuthLocalDataSource().getAuthData();

    final response = await http.get(url,
        headers: {
          'Authorization' : 'Bearer ${authData.token}',
          'Accept': 'application/json'
        });

    if (response.statusCode ==200){
      return Right(DiscountResponseModel.fromJson(response.body));
    }else{
      return const Left('Failed to get discount');
    }
  }

}