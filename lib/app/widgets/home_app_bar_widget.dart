import 'package:flutter/material.dart';

typedef TopDateCallback = void Function(DateTime);

class HomeAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBarWidget(
      {super.key,
      required this.onNextTap,
      required this.onPreviousTap,
      required this.title,
      required this.onTitleTap});

  final VoidCallback onPreviousTap;
  final VoidCallback onNextTap;
  final TopDateCallback onTitleTap;
  final Widget title;

  @override
  Size get preferredSize => const Size.fromHeight(70);
  
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.only(top: mediaQuery.viewPadding.top),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.keyboard_arrow_left_rounded),
            onPressed: () {
              onPreviousTap;
            },
          ),
          GestureDetector(
            onTap: () {
              onTitleTap(DateTime.now());
            },
            child: title,
          ),
          IconButton(
            icon: const Icon(Icons.keyboard_arrow_right_rounded),
            onPressed: () {
              onNextTap;
            },
          ),
        ],
      ),
    );
  }
}
