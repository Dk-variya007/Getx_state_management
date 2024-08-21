import 'package:flutter/material.dart';
import 'package:get/get.dart';
class thirdClass extends StatelessWidget {
  const thirdClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("3 screen"),
      ),
      body: Center(
        child: TextButton(onPressed: (){
          Get.back();
          Get.back();
        },child: const Text("3 scren")),
      ),
    );
  }
}
