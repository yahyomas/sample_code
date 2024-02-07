import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:test_task/domain/entities/business/business_attributes.dart';

class BusinessItem extends StatelessWidget {
  final BusinessAttributes attributes;

  const BusinessItem({super.key, required this.attributes});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        title: Text(
          attributes.businessName,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.star_rate_outlined,
                  size: 16,
                  color: Theme.of(context).colorScheme.primary,
                ),
                Text(attributes.rating.rating.toString()),
                const Spacer(),
                Text(
                  'phone: ${attributes.phone.number}',
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Text('Details:'),
            Html(data: attributes.description)
          ],
        ),
      ),
    );
  }
}
