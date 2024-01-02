import 'package:get/get.dart';
import '../view/calculate_view.dart';

class CalculateController extends GetxController {
  CalculateView? view;
  var arguments = Get.arguments;

  var isLoading = true.obs;

  late int input;
  List<Map<int, String>> listNumber = [];

  void calculate() {
    for (int i = 1; i <= input; i++) {
      if (i % 3 == 0 && i % 5 == 0) {
        listNumber.add({i: 'TigaLima'});
      } else if (i % 3 == 0) {
        listNumber.add({i: "Tiga"});
      } else if (i % 5 == 0) {
        listNumber.add({i: 'Lima'});
      } else {
        listNumber.add({i: i.toString()});
      }
    }
    isLoading.value = false;
    update();
  }

  @override
  void onInit() {
    input = int.parse(arguments);
    calculate();
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
