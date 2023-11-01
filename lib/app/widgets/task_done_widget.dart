import 'package:flutter/material.dart';
import 'package:todo_app/themes/color_extension.dart';

class TaskDoneWidget extends StatelessWidget {
  const TaskDoneWidget({super.key, required this.isDone, this.radius = 16});

  final bool isDone;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorExtension = theme.extension<ColorExtension>()!;
    return Container(
      height: radius * 2,
      width: radius * 2,
      decoration: BoxDecoration(
        color: isDone ? colorExtension.doneBackgroundColor : Colors.transparent,
        border: Border.all(
            color: isDone
                ? colorExtension.doneBackgroundColor
                : colorExtension.doneBorderColor),
        shape: BoxShape.circle,
      ),
      child: !isDone
          ? null
          : const Center(
              child: Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
    );
  }
}
