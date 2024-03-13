import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_task/core/utils/generic_bloc_state.dart';
import 'package:test_task/domain/entities/weather.dart';

import 'main_screen_error_type.dart';

part 'main_screen_state.freezed.dart';

@freezed
class MainScreenState with _$MainScreenState {
  const factory MainScreenState({
    @Default(Status.loading) Status status,
    MainScreenErrorType? mainScreenErrorType,
    @Default('') String cityName,
    @Default('') String temp,
    @Default('') String feelsLike,
    @Default('') String info,
    @Default('') String main,
    Weather? weatherDto,
  }) = _MainScreenState;
}
