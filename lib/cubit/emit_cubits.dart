import 'package:bloc/bloc.dart';
import 'package:bloc_qubit_test/cubit/cubit_state.dart';

class AppCubit extends Cubit<CubitState> {
  AppCubit() : super(InitialState()) {
    emit(HomeState());
  }
}
