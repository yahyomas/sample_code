import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/domain/service/connectivity_bloc/connectivity_state.dart';

class ConnectivityBloc extends Cubit<ConnectivityState> {
  ConnectivityBloc() : super(const ConnectivityState());

  Future<void> checkConnectivity() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    emit(state.copyWith(
        isOffline: connectivityResult == ConnectivityResult.none));


    Connectivity().onConnectivityChanged.listen((event) {

      emit(state.copyWith(
          isOffline: event == ConnectivityResult.none));
    });
  }
}
