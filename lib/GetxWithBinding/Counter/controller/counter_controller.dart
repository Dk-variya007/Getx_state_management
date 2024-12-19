import 'package:get/get.dart';

class CounterController extends GetxController {
  //static CounterController get instance => Get.find<CounterController>();
  RxInt counter = 0.obs;

  increment() => counter.value++;

  decrement() => counter.value--;
}
