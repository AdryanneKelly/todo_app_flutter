import 'package:flutter/material.dart';
import 'package:todo_app/app/pages/add_task_page.dart';
import 'package:todo_app/app/widgets/header_widget.dart';
import 'package:todo_app/app/widgets/home_app_bar_widget.dart';
import 'package:todo_app/components/filter_list_component.dart';
import 'package:todo_app/components/task_list_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void navigateToForm() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return const AddTaskPage();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: HomeAppBarWidget(
        onNextTap: () {},
        onPreviousTap: () {},
        title: Text(
          'Hoje',
          style: theme.appBarTheme.titleTextStyle,
        ),
        onTitleTap: (date) {},
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Column(
          children: [
            HeaderWidget(
              title: 'Tarefas de Hoje',
              date: 'Hoje',
              onAddTap: navigateToForm,
            ),
            const SizedBox(height: 20),
            const FilterListComponent(),
            const SizedBox(height: 20),
            const Expanded(
              child: TaskListComponent(),
            ),
          ],
        ),
      ),
    );
  }
}
