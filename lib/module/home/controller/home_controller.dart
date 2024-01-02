import 'package:flutter/material.dart';
import 'package:flutter_test_holywings/core.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeView? view;
  final formKey = GlobalKey<FormState>();
  TextEditingController numberInputController = TextEditingController();

  void goToCalculate() {
    if (formKey.currentState!.validate()) {
      Get.to(const CalculateView(), arguments: numberInputController.text);
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
