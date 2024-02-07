import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/core/utils/generic_bloc_state.dart';
import 'package:test_task/domain/entities/business/business.dart';
import 'package:test_task/domain/entities/city/city.dart';
import 'package:test_task/domain/entities/service_category/service_category.dart';
import 'package:test_task/domain/repository/business_repository.dart';
import 'package:test_task/presentation/main/bloc/main_screen_state.dart';

class MainScreenCubit extends Cubit<MainScreenState> {
  final BusinessRepository _repository;

  MainScreenCubit(this._repository) : super(const MainScreenState());

  ///method that fetches default data from API
  Future<void> fetchBusinesses() async {
    emit(state.copyWith(status: Status.loading));

    try {
      final res = await _repository.fetchMainScreenData(
          lat: state.selectedCity.lat, lon: state.selectedCity.lon);

      emit(
        state.copyWith(
            status: Status.success,
            businesses: res.$1,
            serviceCategories: res.$2,
            isFilterActive: false),
      );
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  ///Updating city and fetching new data
  FutureOr<void> onCityChanged(City? city) async {
    if (city == null) {
      return;
    }
    emit(state.copyWith(selectedCity: city));
    fetchBusinesses();
  }

  ///Fetching businesses and filtering with [serviceCategory.id]
  ///(tried to make filter with api, but it did not worked.
  ///Tried to make like this(https://www.massagebook.com/nxt/pu-api/v1/businesses?limit=1&includes=service_categories,primary_photo&filters=latitude==38.8339,longitude==-104.8214,service-category==12))
  ///So here implementing filter ourselves
  FutureOr<void> onFilterChanged(ServiceCategory? serviceCategory) async {
    if (serviceCategory == null) {
      return;
    }
    emit(state.copyWith(status: Status.loading));

    try {
      ///fetching data
      final res = await _repository.fetchMainScreenData(
          lat: state.selectedCity.lat, lon: state.selectedCity.lon);

      ///feltering
      final List<Business> businesses =
          _filterBusiness(res.$1, serviceCategory.id);

      emit(state.copyWith(
          status: Status.success,
          businesses: businesses,
          isFilterActive: true));
    } catch (e) {
      emit(state.copyWith(status: Status.failure, isFilterActive: false));
    }
  }


  ///method that used to filter
  List<Business> _filterBusiness(
      List<Business> mainList, String serviceCategoryId) {
    List<Business> businesses = [];

    for (var element in mainList) {
      for (var el in element.serviceCategories.data) {
        if (el.id == serviceCategoryId) {
          businesses.add(element);
        }
      }
    }
    return businesses;
  }
}
