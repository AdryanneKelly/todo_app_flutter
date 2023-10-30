import 'package:flutter/material.dart';
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
        onTitleTap: (date){
          
        },
      ),
    );
  }
}
