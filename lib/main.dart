import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_restopos/core/constants/colors.dart';
import 'package:flutter_restopos/data/datasources/auth_remotes_datasource.dart';
import 'package:flutter_restopos/presentations/auth/login/bloc/login_bloc.dart';
import 'package:flutter_restopos/presentations/auth/login/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(AuthRemoteDatasource()),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
            useMaterial3: true,
            textTheme: GoogleFonts.quicksandTextTheme(
              Theme.of(context).textTheme,
            ),
          ),
          home: const LoginPage()),
    );
  }
}
