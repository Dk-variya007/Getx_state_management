import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/getx/counter_controller.dart';

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
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    counterController.increament();
                  },
                  child: const Text("Add")),
              ElevatedButton(
                  onPressed: () {
                    counterController.decrement();
                  },
                  child:const Text("Sub")),
              ElevatedButton(
                  onPressed: () {
                    counterController.reset();
                  },
                  child: const Text("Reset")),
            ],
          ),
        ],
      ),
    );
  }
}
