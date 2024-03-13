import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:test_task/presentation/weather_details/bloc/weather_details_screen_cubit.dart';
import 'package:test_task/presentation/weather_details/bloc/weather_details_screen_state.dart';

@RoutePage()
class WeatherDetailsScreen extends StatelessWidget {
  static const String route = '/weather_details_screen';
  final WeatherDetailsScreenCubit weatherDetailsScreenCubit;

  const WeatherDetailsScreen(
      {super.key, required this.weatherDetailsScreenCubit});



  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('dd.MM');

    return BlocBuilder<WeatherDetailsScreenCubit, WeatherDetailsScreenState>(
        bloc: weatherDetailsScreenCubit,
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 54,
                    ),
                    Text(
                      state.weatherDto!.timezone,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      '${state.tempC}° C',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      state.main,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      state.info
                    ),
                    const SizedBox(height: 12,),
                    Text('${state.tempK} K  |  ${state.tempF}° F',
                    style: Theme.of(context).textTheme.titleSmall,),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Theme.of(context).colorScheme.surface),
                      margin: const EdgeInsets.all(24),
                      padding: const EdgeInsets.all(12),
                      alignment: Alignment.center,
                      child: ListView.separated(
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          itemBuilder: (context, index) {
                            final day = state.weatherDto!.daily[index];

                            final date = DateTime.fromMillisecondsSinceEpoch(
                                (day.dt * 1000).toInt());

                            return Row(
                              children: [
                                Text(dateFormat.format(date),
                                  style: Theme.of(context).textTheme.titleSmall ,
                                ),
                                Expanded(child: Text('..'*100, maxLines: 1,)),
                                Text(
                                  '${day.temp.day.toInt() - 273}° C',
                                  style: Theme.of(context).textTheme.titleMedium ,
                                ),
                              ],
                            );

                          },
                          separatorBuilder: (context, index) {
                            return const Divider();
                          },
                          itemCount: state.weatherDto!.daily.length),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
