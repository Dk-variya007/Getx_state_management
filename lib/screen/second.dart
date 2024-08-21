import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/screen/thired.dart';
class secondClass extends StatelessWidget {
  const secondClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2 screen "),
      ),
      body: Center(
        child: TextButton(onPressed: (){
          Get.to(thirdClass());
        },child: const Text("go to 3")),
      ),
    );
  }
}
