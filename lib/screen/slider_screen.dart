import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/getx/slider_controller.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  SliderController sliderController = Get.put(SliderController());
  @override
  Widget build(BuildContext context) {
    log("build");
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        children: [
          Obx(() => Container(
                width: 200,
                height: 200,
                color: Colors.red.withOpacity(sliderController.opecityCalculator.value),
              )),
          Obx(() => Slider(
              value: sliderController.opecityCalculator.value,
              onChanged: (value) {
                sliderController.setOpecity(value);
              }))
        ],
      ),
    ));
  }
}
