import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techthermoxapp/cubit/app_cubit_logic.dart';
import 'package:techthermoxapp/cubit/app_cubits.dart';
import 'package:techthermoxapp/pages/detail_page.dart';
import 'package:techthermoxapp/pages/home_page.dart';
import 'package:techthermoxapp/pages/navpages/log_in.dart';
import 'package:techthermoxapp/pages/welcome_page.dart';
import 'package:techthermoxapp/pages/navpages/main_page.dart';
import 'package:techthermoxapp/pages/login_page.dart';
import 'package:techthermoxapp/services/data_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocProvider<AppCubits>(
          create: (context) => AppCubits(
            data: DataServices(),
          ),
          child: AppCubitLogics(),
        ));
  }
}
