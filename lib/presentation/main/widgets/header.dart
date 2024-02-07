import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String cityName;
  final VoidCallback onCityPressed;
  final VoidCallback onFilterPressed;
  final bool isFilterActive;

  const HeaderWidget(
      {super.key,
      required this.cityName,
      required this.onCityPressed,
      required this.onFilterPressed,
      required this.isFilterActive});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: onCityPressed,
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  title: Text(cityName),
                  trailing: const Icon(Icons.keyboard_arrow_down_outlined),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          InkWell(
            onTap: onFilterPressed,
            child: Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                children: [
                  const Center(
                      child: Icon(
                    Icons.filter_alt_outlined,
                    size: 40,
                  )),
                  Visibility(
                    visible: isFilterActive,
                    child: Positioned(
                      top: 8,
                        right: 8,
                        child: Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).colorScheme.primary
                      ),
                    )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
