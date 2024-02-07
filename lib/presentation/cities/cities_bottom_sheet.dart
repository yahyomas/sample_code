import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_task/cities.dart';

class CitiesBottomSheet extends StatelessWidget {
  const CitiesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    const r = Radius.circular(24);
    return Container(
      height: 280,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(topRight: r, topLeft: r),
          color: Theme.of(context).colorScheme.surface),
      padding: const EdgeInsets.all(24),
      child: Column(
        children: List.generate(
          myCities.length,
          (index) => ListTile(
            title: Text(myCities[index].name),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18,
            ),
            onTap: () => context.popRoute(myCities[index]),
          ),
        ),
      ),
    );
  }
}
