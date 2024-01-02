import 'package:flutter/material.dart';
import 'package:flutter_test_holywings/core.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    ),
  );
}
