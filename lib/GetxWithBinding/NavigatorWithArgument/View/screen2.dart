import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/GetxWithBinding/NavigatorWithArgument/Controller/screen2_controller.dart';

class Screen2 extends GetView<Screen2Controller> {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    final String argument = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(argument),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Go to Screen1")),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/');
                },
                child: const Text("Go to Home Screen"))
          ],
        ),
      ),
    );
  }
}
