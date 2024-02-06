import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/core/router/app_router.dart';
import 'package:test_task/core/utils/generic_bloc_state.dart';
import 'package:test_task/presentation/splash/bloc/splash_screen_cubit.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  static const String route = '/';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _visible = false;

  @override
  void initState() {
    context.read<SplashScreenCubit>().init();

    Future.delayed(const Duration(milliseconds: 100)).then((value) {
      setState(() {
        _visible = !_visible;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashScreenCubit, GenericBlocState>(
      listener: (context, state) {
        if (state.status == Status.success) {
          context.replaceRoute(const MainRoute());
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: AnimatedOpacity(
              opacity: _visible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 1500),
              child: Text(
                'Splash!',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
        );
      },
    );
  }
}
