import 'package:get/get.dart';
import '../Controller/navigator_controller.dart';

class NavigatorRoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NavigatorController());
  }
}
