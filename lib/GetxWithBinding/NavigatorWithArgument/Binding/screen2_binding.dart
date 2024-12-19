import 'package:get/get.dart';
import '../Controller/screen2_controller.dart';

class Screen2Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(Screen2Controller());
  }
}
