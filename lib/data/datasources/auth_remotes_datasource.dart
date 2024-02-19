import 'package:flutter_restopos/core/constants/variables.dart';
import 'package:flutter_restopos/data/datasources/auth_local_datasource.dart';
import 'package:flutter_restopos/data/models/response/auth_response_model.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'dart:convert';

class AuthRemoteDatasource {
  Future<Either<String, AuthResponseModel>> login(
      String email, String password) async {
    final url = Uri.parse('${Variables.baseUrl}/api/login');
    final response = await http.post(
      url,
      body: {
        'email': email,
        'password': password,
      },
    );

    final responseData = json.decode(response.body);

    if (response.statusCode == 200) {
      final authResponse = AuthResponseModel.fromMap(responseData);
      return Right(authResponse);
    } else {
      return Left(responseData['message']);
    }
  }

  Future<Either<String, bool>> logout() async{
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/logout');

    final response = await http.post(
      url,
      headers: {
        'Authorization' : 'Bearer ${authData.token}',
        'Accept' : 'application/json',
        'Content-type' : 'application'
      }
    );

    if(response.statusCode == 200){
      return const Right(true);
    }else{
      return const Left('Failed to logout');
    }
  }
}
