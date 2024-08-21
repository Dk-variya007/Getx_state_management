import 'package:get/get.dart';

class Favorite extends GetxController{
  RxList fruits = ["orange", "banana", "mango"].obs;
 RxList secondList = [].obs;

 removerfromFavorite(String value){
   secondList.remove(value);
 }

  ADD(String value){
    secondList.add(value);
  }
}