import 'package:flutter/material.dart';
import 'package:todo_app/app/widgets/header_widget.dart';
import 'package:todo_app/app/widgets/home_app_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBarWidget(
        onNextTap: () {},
        onPreviousTap: () {},
        title: const Text('Hoje'),
        onTitleTap: (date) {},
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Column(
          children: [
            HeaderWidget(),
          ],
        ),
      ),
    );
  }
}
