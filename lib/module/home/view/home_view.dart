import 'package:flutter/material.dart';
import '../controller/home_controller.dart';
import 'package:flutter_test_holywings/core.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Checking Number App"),
          ),
          body: Container(
            width: Get.width,
            height: Get.height,
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: controller.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Input how many number to be tested'),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.number,
                      autofocus: false,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Must be filled';
                        } else if (int.parse(value) < 1) {
                          return 'Must higher than 0';
                        }
                        return null;
                      },
                      controller: controller.numberInputController,
                      onSaved: (String? val) {
                        controller.numberInputController.text = val!;
                      },
                      decoration: InputDecoration(
                        hintText: "e.g : 10",
                        hintStyle: TextStyle(color: Colors.blue[500]),
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                        ),
                      ),
                      style: TextStyle(fontSize: 16.0, color: Colors.blue[900]),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.goToCalculate();
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text("Submit"),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
