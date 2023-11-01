import 'package:flutter/material.dart';
import 'package:todo_app/app/widgets/task_card_widget.dart';

class TaskListComponent extends StatelessWidget {
  const TaskListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 30,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (_, index) {
        return TaskCardWidget(
          title: 'Title $index',
          description: 'Description $index',
          isDone: index.isEven,
          initialDate: DateTime.now(),
          endDate: DateTime.now(),
          onTap: () {},
        );
      },
    );
  }
}
