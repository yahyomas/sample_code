import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/core/utils/generic_bloc_state.dart';
import 'package:test_task/presentation/main/bloc/main_screen_error_type.dart';

import 'bloc/main_screen_cubit.dart';
import 'bloc/main_screen_state.dart';
import 'widgets/weather_widget.dart';

class MainScreenOfflineBody extends StatelessWidget {
  const MainScreenOfflineBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainScreenCubit, MainScreenState>(
      listener: (context, state) {
        if (state.status == Status.failure &&
            state.mainScreenErrorType == MainScreenErrorType.noLocalData) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('No local data'),
            ),
          );
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              WeatherWidget(
                cityName: state.cityName,
                temp: state.temp,
                feelsLike: state.feelsLike,
                main: state.main,
                info: state.info,
              )
            ],
          ),
        );
      },
    );
  }
}
