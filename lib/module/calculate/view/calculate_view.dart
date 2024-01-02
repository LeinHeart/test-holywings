import 'package:flutter/material.dart';
import 'package:flutter_test_holywings/global/widgets/loader.dart';
import '../controller/calculate_controller.dart';
import 'package:flutter_test_holywings/core.dart';
import 'package:get/get.dart';

class CalculateView extends StatelessWidget {
  const CalculateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CalculateController>(
      init: CalculateController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Calculate"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              width: Get.width,
              height: Get.height * 0.8,
              child: controller.isLoading.value
                  ? const Center(child: Loader())
                  : ListView.builder(
                      itemCount: controller.listNumber.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(16),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                  "${controller.listNumber[index].keys.toString()} - ${controller.listNumber[index].values.toString()}"),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ),
        );
      },
    );
  }
}
