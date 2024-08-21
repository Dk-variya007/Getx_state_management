
import 'package:get/get.dart';


class SliderController extends GetxController{
  RxDouble opecityCalculator=0.4.obs;
  setOpecity(double value){
    opecityCalculator.value=value ;
  }
}