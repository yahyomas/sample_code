import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/core/custom_widgets/error_widget.dart';
import 'package:test_task/core/custom_widgets/loading_widget.dart';
import 'package:test_task/core/router/app_router.dart';
import 'package:test_task/core/utils/generic_bloc_state.dart';
import 'package:test_task/presentation/main/bloc/main_screen_error_type.dart';
import 'package:test_task/presentation/main/widgets/header.dart';
import 'package:test_task/presentation/main/widgets/weather_widget.dart';
import 'package:test_task/presentation/weather_details/bloc/weather_details_screen_cubit.dart';

import 'bloc/main_screen_cubit.dart';
import 'bloc/main_screen_state.dart';

class MainScreenBody extends StatelessWidget {
  const MainScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MainScreenCubit>();
    return BlocConsumer<MainScreenCubit, MainScreenState>(
      listener: (context, state) {
        if (state.status == Status.failure &&
            state.mainScreenErrorType == MainScreenErrorType.cityNotFound) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('City not found'),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state.status == Status.loading) {
          return const LoadingWidget();
        }

        if (state.status == Status.failure &&
            state.mainScreenErrorType == null) {
          return CustomErrorWidget(
            onPressed: () => cubit.fetchDefaultData(),
          );
        }

        return SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HeaderWidget(
                searchController: cubit.searchController,
              ),
              WeatherWidget(
                cityName: state.cityName,
                temp: state.temp,
                feelsLike: state.feelsLike,
                main: state.main,
                info: state.info,
                onTap: () {
                  context.pushRoute(WeatherDetailsRoute(
                      weatherDetailsScreenCubit: WeatherDetailsScreenCubit(
                          weatherDto: state.weatherDto!)));
                },
              )
            ],
          ),
        );
      },
    );
  }
}
