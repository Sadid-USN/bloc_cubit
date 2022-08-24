import 'package:bloc_qubit_test/cubit/cubit_state.dart';
import 'package:bloc_qubit_test/cubit/emit_cubits.dart';
import 'package:bloc_qubit_test/cubit/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);
  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<AppCubit, CubitState>(
      builder: (context, state) {
        if (state is HomeState) {
          return const HomePage();
        } else {
          return const SizedBox();
        }
      },
    ));
  }
}
