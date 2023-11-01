import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget(
      {super.key,
      required this.title,
      required this.date,
      required this.onAddTap});

  final String title;
  final String date;
  final VoidCallback onAddTap;
  
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(date, style: theme.textTheme.titleSmall),
          ],
        ),
        ElevatedButton.icon(
          onPressed: onAddTap,
          label: const Text("Nova tarefa"),
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}
