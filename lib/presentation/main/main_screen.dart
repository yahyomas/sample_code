import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/domain/service/connectivity_bloc/connectivity_bloc.dart';
import 'package:test_task/domain/service/connectivity_bloc/connectivity_state.dart';
import 'package:test_task/presentation/main/bloc/main_screen_cubit.dart';
import 'package:test_task/presentation/main/main_screen_body.dart';
import 'package:test_task/presentation/main/main_screen_offline_body.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  static const String route = '/';

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    context.read<MainScreenCubit>().fetchDefaultData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectivityBloc, ConnectivityState>(
        builder: (context, state) {
      return Scaffold(
        body: state.isOffline
            ? const MainScreenOfflineBody()
            : const MainScreenBody(),
      );
    });
  }
}
