import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_restopos/data/datasources/auth_local_datasource.dart';
import 'package:flutter_restopos/data/models/response/auth_response_model.dart';
import 'package:flutter_restopos/presentations/auth/bloc/login_page.dart';
import 'package:flutter_restopos/presentations/auth/bloc/logout/logout_bloc.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  User? user;
  
  @override
  void initState() {
    AuthLocalDataSource().getAuthData().then((value) {
      setState(() {
        user = value.user;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('welcome'),),
      body:  Center(
        child: Column(
          children: [
             const Text('Welcome to Dashboard'),
             Text('Name: ${user?.name?? ''}'),
             const SizedBox(height: 100,),
             ElevatedButton(onPressed: (){

              context.read<LogoutBloc>().add(const LogoutEvent.logout());

              AuthLocalDataSource().removeAuthData().then((value) => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){

                return const LoginPage();
              }), (route)=> false));
            
             },
             child: const Text('Logout'))

            
          ],
        ),
      ),
    );
  }
}