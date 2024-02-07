import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_task/core/utils/generic_bloc_state.dart';
import 'package:test_task/domain/entities/business/business.dart';
import 'package:test_task/domain/entities/city/city.dart';
import 'package:test_task/domain/entities/service_category/service_category.dart';

part 'main_screen_state.freezed.dart';

@freezed
class MainScreenState with _$MainScreenState {
  const factory MainScreenState({
    @Default(Status.initial) Status status,
    @Default([]) List<Business> businesses,
    @Default([]) List<ServiceCategory> serviceCategories,
    @Default(City(name: 'Washington', lat: '47.7511', lon: '-120.7401', id: 0))
    City selectedCity,
    @Default(false) bool isFilterActive,
  }) = _MainScreenState;
}
