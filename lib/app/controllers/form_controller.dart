// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FormController {
  FormController() {
    formKey = GlobalKey<FormState>();
    titleController = TextEditingController();
    descriptionController = TextEditingController();
    dateController = TextEditingController();
    initHourController = TextEditingController();
    endHourController = TextEditingController();
  }
  late final GlobalKey<FormState> formKey;
  late final titleController;
  late final descriptionController;
  late final dateController;
  late final initHourController;
  late final endHourController;

  Future<void> add() async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;
  }

  void changeDate(DateTime newDate) {
    dateController.text = newDate.toString();
  }

  void changeInitHour(TimeOfDay newHour) {
    initHourController.text = newHour.toString();
  }

  void changeEndHour(TimeOfDay newHour) {
    endHourController.text = newHour.toString();
  }
}
