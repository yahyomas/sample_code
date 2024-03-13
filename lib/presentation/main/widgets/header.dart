import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/presentation/main/bloc/main_screen_cubit.dart';

class HeaderWidget extends StatelessWidget {
  final TextEditingController searchController;

  const HeaderWidget({super.key, required this.searchController});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: TextFormField(
          controller: searchController,
          decoration: const InputDecoration(hintText: 'Search'),
          textCapitalization: TextCapitalization.sentences,
          onFieldSubmitted: (_) =>
              context.read<MainScreenCubit>().onSearchSubmitted(),
        ));
  }
}
