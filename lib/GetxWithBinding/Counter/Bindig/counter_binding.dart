import 'package:get/get.dart';
import 'package:getx_demo/getx/counter_controller.dart';

class CounterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CounterController());
  }
}
