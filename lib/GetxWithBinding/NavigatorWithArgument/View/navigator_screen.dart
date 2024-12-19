import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/GetxWithBinding/NavigatorWithArgument/Controller/navigator_controller.dart';

class NavigatorScreen extends GetView<NavigatorController> {
  const NavigatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/screen1', arguments: "Screen 1");
                },
                child: const Text("Go to Screen1")),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/screen2', arguments: "Screen 2");
                },
                child: const Text("Go to screen2"))
          ],
        ),
      ),
    );
  }
}
