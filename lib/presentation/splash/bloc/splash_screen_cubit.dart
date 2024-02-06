import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/core/utils/generic_bloc_state.dart';

class SplashScreenCubit extends Cubit<GenericBlocState> {
  SplashScreenCubit() : super(GenericBlocState.initial());

  void init() {
    Timer.periodic(const Duration(seconds: 2), (timer) {
      timer.cancel();
      emit(GenericBlocState.success());
    });
  }
}
