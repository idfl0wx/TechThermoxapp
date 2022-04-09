import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc/bloc.dart';
import 'package:techthermoxapp/cubit/app_cubit_state.dart';
import 'package:techthermoxapp/model/data_model.dart';
import 'package:techthermoxapp/services/data_services.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataServices data;
  late final components;
  Future<void> getData() async {
    try {
      emit(LoadingState());
      components = await data.getInfo();
      emit(LoadedState(components));
    } catch (e) {}
  }

  detailPage(DataModel data) {
    emit(DetailState(data));
  }

  goHome() {
    emit(LoadedState(components));
  }
}
