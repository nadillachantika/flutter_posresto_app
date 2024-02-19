import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_restopos/data/datasources/auth_remotes_datasource.dart';
import 'package:flutter_restopos/data/models/response/auth_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRemoteDatasource authRemoteDatasource;

  LoginBloc(this.authRemoteDatasource) : super(const _Initial()){
    on<_Login>((event, emit)async{
     
      emit(const _Loading());
      await Future.delayed(const Duration(seconds: 2));

      final result = await authRemoteDatasource.login(
        event.email, event.password
        );

        result.fold(
          (error)=>emit(_Error(error)),
          (success) => emit(_Success(success))
        );
  });
}
 
}
