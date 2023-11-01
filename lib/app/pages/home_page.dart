import 'package:flutter/material.dart';
import 'package:todo_app/app/widgets/header_widget.dart';
import 'package:todo_app/app/widgets/home_app_bar_widget.dart';
import 'package:todo_app/components/filter_list_component.dart';
import 'package:todo_app/components/task_list_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Column(
          children: [
            HeaderWidget(),
            SizedBox(height: 20),
            FilterListComponent(),
            SizedBox(height: 20),
            Expanded(child: TaskListComponent()),
          ],
        ),
      ),
    );
  }
}
