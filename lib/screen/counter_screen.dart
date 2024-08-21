import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/provider/counter_controller.dart';

class CounterClass extends StatefulWidget {
  const CounterClass({super.key});

  @override
  State<CounterClass> createState() => _CounterClassState();
}

class _CounterClassState extends State<CounterClass> {
  CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    log("build");
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text("${counterController.counter.value}")),
          ElevatedButton(
              onPressed: () {
                counterController.increament();
              },
              child: const Icon(Icons.add)),
        ],
      ),
    );
  }
}
