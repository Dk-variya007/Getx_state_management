import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/getx/counter_controller.dart';

class Counter extends GetView<CounterController> {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(controller.counter.value.toString())),
            // Wrap the text in Obx
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                controller.increament(); // Call increment instead of increament
              },
              child: const Text("Increment"),
            ),
            ElevatedButton(
              onPressed: () {
                controller.decrement(); // Add decrement button for completeness
              },
              child: const Text("Decrement"),
            ),
          ],
        ),
      ),
    );
  }
}
