import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/core/network/custom_error.dart';
import 'package:test_task/core/utils/generic_bloc_state.dart';
import 'package:test_task/data/model/local/weather_local.dart';
import 'package:test_task/domain/entities/weather.dart';
import 'package:test_task/domain/repository/weather_repo.dart';
import 'package:test_task/domain/service/connectivity_bloc/connectivity_bloc.dart';
import 'package:test_task/domain/service/location_service/location_service.dart';
import 'package:test_task/presentation/main/bloc/main_screen_error_type.dart';
import 'package:test_task/presentation/main/bloc/main_screen_state.dart';

class MainScreenCubit extends Cubit<MainScreenState> {
  final WeatherRepo repo;
  final LocationService locationService;
  final ConnectivityBloc connectivityBloc;

  final TextEditingController searchController = TextEditingController();

  MainScreenCubit(
      {required this.locationService,
      required this.repo,
      required this.connectivityBloc})
      : super(const MainScreenState()) {
    connectivityBloc.stream.listen((event) {
      if (!event.isOffline) {
        fetchDefaultData();
      }
    });
  }

  Future<void> fetchDefaultData() async {
    try {
      await connectivityBloc.checkConnectivity();
      if (connectivityBloc.state.isOffline) {
        _getLocalData();
      } else {
        _fetchRemoteData();
      }
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  void onSearchSubmitted() async {
    try {
      emit(state.copyWith(status: Status.loading));

      final location = await repo.getCityLocation(searchController.text);

      final res = await repo.fetchWeatherData(
          lat: location.$1.toString(), lon: location.$2.toString());

      emit(
        state.copyWith(
            cityName: res.timezone,
            temp: (res.current.temp - 273).toInt().toString(),
            feelsLike: (res.current.feelsLike - 273).toInt().toString(),
            info: res.current.weather[0].description,
            main: res.current.weather[0].main,
            weatherDto: res,
            status: Status.success),
      );
    } catch (e) {
      if (e is CityNotFoundError) {
        searchController.text = '';
        emit(state.copyWith(
            status: Status.failure,
            mainScreenErrorType: MainScreenErrorType.cityNotFound));
      } else {
        emit(state.copyWith(status: Status.failure));
      }
    }
  }

  void _fetchRemoteData() async {
    emit(state.copyWith(status: Status.loading));

    final location = await locationService.determinePosition();

    if (location == null) {
      emit(state.copyWith(status: Status.failure));
      return;
    }

    final res = await repo.fetchWeatherData(
        lat: location.latitude.toString(), lon: location.longitude.toString());

    _saveData(res);

    emit(
      state.copyWith(
          cityName: res.timezone,
          temp: (res.current.temp - 273).toInt().toString(),
          feelsLike: (res.current.feelsLike - 273).toInt().toString(),
          info: res.current.weather[0].description,
          main: res.current.weather[0].main,
          weatherDto: res,
          status: Status.success),
    );
  }

  void _saveData(Weather res) async {
    await repo.saveWeatherData(WeatherLocal(
        temp: (res.current.temp - 273).toInt().toString(),
        info: res.current.weather[0].description,
        main: res.current.weather[0].main,
        feelsLike: (res.current.feelsLike - 273).toInt().toString(),
        cityName: res.timezone));
  }

  void _getLocalData() async {
    final WeatherLocal? weatherLocal = await repo.getWeatherData();

    if (weatherLocal == null) {
      emit(state.copyWith(
          status: Status.failure,
          mainScreenErrorType: MainScreenErrorType.noLocalData));
    } else {
      emit(state.copyWith(
          cityName: weatherLocal.cityName,
          temp: weatherLocal.temp,
          feelsLike: weatherLocal.feelsLike,
          info: weatherLocal.info,
          main: weatherLocal.main,
          status: Status.success));
    }
  }
}
