import 'package:flutter/material.dart';
import 'package:todo_app/app/pages/home_page.dart';
import 'package:todo_app/themes/app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: AppTheme.light,
    );
  }
}
