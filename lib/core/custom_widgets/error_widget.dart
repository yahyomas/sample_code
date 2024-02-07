import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomErrorWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_rounded,
            size: 120,
            color: Theme.of(context).colorScheme.error,
          ),
          const SizedBox(
            height: 24,
          ),
          InkWell(
            onTap: onPressed,
            child: Text(
              'We have got an error :(\nTap to try again',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
