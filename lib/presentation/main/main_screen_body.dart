import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/core/custom_widgets/error_widget.dart';
import 'package:test_task/core/custom_widgets/loading_widget.dart';
import 'package:test_task/core/utils/generic_bloc_state.dart';
import 'package:test_task/domain/entities/city/city.dart';
import 'package:test_task/domain/entities/service_category/service_category.dart';
import 'package:test_task/presentation/cities/cities_bottom_sheet.dart';
import 'package:test_task/presentation/filter/filter_bottom_sheet.dart';
import 'package:test_task/presentation/main/widgets/header.dart';
import 'package:test_task/presentation/main/widgets/item.dart';

import 'bloc/main_screen_cubit.dart';
import 'bloc/main_screen_state.dart';

class MainScreenBody extends StatelessWidget {
  const MainScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MainScreenCubit>();
    return BlocBuilder<MainScreenCubit, MainScreenState>(
      builder: (context, state) {
        if (state.status == Status.loading) {
          return const LoadingWidget();
        }

        if (state.status == Status.failure) {
          return CustomErrorWidget(
            onPressed: () => cubit.fetchBusinesses(),
          );
        }

        return SafeArea(
          child: Column(
            children: [
              HeaderWidget(
                cityName: state.selectedCity.name,
                onCityPressed: () async {
                  final City? city = await showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const CitiesBottomSheet();
                      });
                  cubit.onCityChanged(city);
                },
                onFilterPressed: () async {
                  final ServiceCategory? serviceCategory =
                      await showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => FilterBottomSheet(
                      serviceCategories: state.serviceCategories,
                      isFilterActive: state.isFilterActive,
                      onRemoveFilterPressed: () => cubit.fetchBusinesses(),
                    ),
                  );

                  cubit.onFilterChanged(serviceCategory);
                },
                isFilterActive: state.isFilterActive,
              ),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final attributes = state.businesses[index].attributes;

                          return BusinessItem(attributes: attributes);
                        },
                        childCount: state.businesses.length,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
