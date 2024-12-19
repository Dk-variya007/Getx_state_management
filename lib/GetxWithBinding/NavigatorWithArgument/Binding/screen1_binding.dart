import 'package:get/get.dart';
import 'package:getx_demo/GetxWithBinding/NavigatorWithArgument/Controller/screen1_controller.dart';

class Screen1Binding extends Bindings{
  @override
  void dependencies() {
    Get.put(Screen1Controller());
  }
}