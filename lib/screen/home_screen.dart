import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/provider/slider_controller.dart';
import 'package:getx_demo/provider/counter_controller.dart';
import 'package:getx_demo/provider/favorite.dart';
import 'package:getx_demo/provider/imagepicker_controller.dart';
import 'package:getx_demo/provider/login_controller.dart';
import 'package:getx_demo/provider/notification.dart';
import 'package:getx_demo/screen/second.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("GetX Tutorial"),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextFormField(
                controller: controller.emailController.value,
                decoration: const InputDecoration(
                  labelText: "Email",
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextFormField(
                controller: controller.passwordController.value,
                decoration: const InputDecoration(
                  labelText: "Password",
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Obx(
              () => ElevatedButton(
                  onPressed: () {
                    controller.loginApi();
                  },
                  child: controller.isLoading.value
                      ? const CircleAvatar(
                          radius: 10,
                          child: CircularProgressIndicator(
                            strokeWidth: 1,
                            color: Colors.red,
                          ),
                        )
                      : const Text("press")),
            )
          ],
        ));
  }
}
