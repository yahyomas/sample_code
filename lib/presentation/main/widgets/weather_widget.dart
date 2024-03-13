import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/presentation/main/bloc/main_screen_cubit.dart';
import 'package:test_task/presentation/main/bloc/main_screen_state.dart';

class WeatherWidget extends StatelessWidget {
  final String cityName;
  final String temp;
  final String feelsLike;
  final String main;
  final String info;
  final VoidCallback? onTap;

  const WeatherWidget(
      {super.key,
      required this.cityName,
      required this.feelsLike,
      required this.main,
      required this.info,
      required this.temp,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenCubit, MainScreenState>(
        builder: (context, state) {
      return InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Theme.of(context).colorScheme.surface),
          margin: const EdgeInsets.all(24),
          padding: const EdgeInsets.all(12),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                cityName,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                '$temp° C',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text('feels like: $feelsLike° C ',
                  style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(
                height: 8,
              ),
              Text(
                main,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                info,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      );
    });
  }
}
