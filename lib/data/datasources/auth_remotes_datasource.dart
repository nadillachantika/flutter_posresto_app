import 'package:flutter_restopos/core/constants/variables.dart';
import 'package:flutter_restopos/data/models/response/auth_response_model.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'dart:convert';


class AuthRemoteDatasource{

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

  if (responseData['status'] == "success") {
    final authResponse = AuthResponseModel.fromMap(responseData);
    return Right(authResponse);
  } else {
    return Left(responseData['message']);
  }
}

}