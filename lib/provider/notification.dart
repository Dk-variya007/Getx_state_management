import 'package:get/get.dart';

class Notificationpro extends GetxController{
  RxBool noti=false.obs;
  toggle(bool value){
    noti.value=value;
  }
}