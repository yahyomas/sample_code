import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_task/domain/entities/service_category/service_category.dart';

class FilterBottomSheet extends StatelessWidget {
  final List<ServiceCategory> serviceCategories;
  final bool isFilterActive;
  final VoidCallback onRemoveFilterPressed;

  const FilterBottomSheet(
      {super.key,
      required this.serviceCategories,
      required this.onRemoveFilterPressed,
      required this.isFilterActive});

  @override
  Widget build(BuildContext context) {
    const r = Radius.circular(54);
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(topRight: r, topLeft: r),
            color: Theme.of(context).colorScheme.surface),
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => context.popRoute(),
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                Visibility(
                  visible: isFilterActive,
                  child: IconButton(
                    onPressed: () {
                      context.popRoute();
                      onRemoveFilterPressed();
                    },
                    icon: Icon(
                      Icons.filter_alt_off_outlined,
                      size: 32,
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(serviceCategories[index].attributes.name),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18,
                      ),
                      onTap: () => context.popRoute(serviceCategories[index]),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      height: 1,
                    );
                  },
                  itemCount: serviceCategories.length),
            ),
          ],
        ),
      ),
    );
  }
}
