import 'dart:developer';

import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 1.obs; // obs monitoring the value of counter
  void increament() {
    counter++;
    log("$counter");
  }

  void decrement() {
    counter--;
  }

  void reset() {
    counter.value = 0;
  }
}
