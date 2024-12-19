import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/GetxWithBinding/NavigatorWithArgument/Controller/screen1_controller.dart';

class Screen1 extends GetView<Screen1Controller> {
  const Screen1({super.key});

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
                  Get.toNamed(
                    '/screen2',
                  );
                },
                child: const Text("Go to Screen2")),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Go to HomePage"))
          ],
        ),
      ),
    );
  }
}
