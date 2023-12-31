import 'package:flutter/material.dart';
import 'package:todo_app/app/widgets/task_done_widget.dart';

class TaskCardWidget extends StatelessWidget {
  const TaskCardWidget(
      {super.key,
      required this.isDone,
      required this.title,
      required this.description,
      required this.initialDate,
      required this.endDate,
      required this.onTap});

  final String title;
  final String description;
  final DateTime initialDate;
  final DateTime endDate;
  final bool isDone;
  final VoidCallback onTap;

  TextDecoration get titleDecoration =>
      isDone ? TextDecoration.lineThrough : TextDecoration.none;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: theme.textTheme.titleLarge?.copyWith(
                        decoration: titleDecoration,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      description,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
                TaskDoneWidget(isDone: isDone)
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Divider(),
            ),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: 'Today  ',
                      style: TextStyle(fontWeight: FontWeight.w600)),
                  TextSpan(text: '10:00 PM - 11:45 PM'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
