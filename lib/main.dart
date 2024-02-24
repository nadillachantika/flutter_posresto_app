import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_restopos/core/constants/colors.dart';
import 'package:flutter_restopos/data/datasources/auth_local_datasource.dart';
import 'package:flutter_restopos/data/datasources/auth_remotes_datasource.dart';
import 'package:flutter_restopos/data/datasources/product_local_datasource.dart';
import 'package:flutter_restopos/data/datasources/product_remotes_datasource.dart';
import 'package:flutter_restopos/presentations/auth/bloc/login/login_bloc.dart';
import 'package:flutter_restopos/presentations/auth/bloc/login_page.dart';
import 'package:flutter_restopos/presentations/auth/bloc/logout/logout_bloc.dart';
import 'package:flutter_restopos/presentations/home/bloc/local_product/local_product_bloc.dart';
import 'package:flutter_restopos/presentations/home/pages/dashboard_page.dart';
import 'package:flutter_restopos/presentations/setting/bloc/sync_product/sync_product_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(AuthRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(AuthRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => SyncProductBloc(ProductRemoteDatasource()),
        ),
         BlocProvider(
          create: (context) => LocalProductBloc(ProductLocalDatasource.instance),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          useMaterial3: true,
          textTheme: GoogleFonts.quicksandTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: FutureBuilder<bool>(
          future: AuthLocalDataSource().isAuthDataExist(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }

            if (snapshot.hasData) {
              if (snapshot.data!) {
                return const DashboardPage();
              } else {
                return const LoginPage();
              }
            }
            return const Scaffold(
              body: Center(
                child: Text('Error'),
              ),
            );
          },
        ),
      ),
    );
  }
}
