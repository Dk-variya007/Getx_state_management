import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_demo/GetxWithBinding/Counter/Bindig/counter_binding.dart';
import 'package:getx_demo/GetxWithBinding/Counter/VIew/counter.dart';
import 'package:getx_demo/GetxWithBinding/NavigatorWithArgument/Binding/screen1_binding.dart';
import 'package:getx_demo/GetxWithBinding/NavigatorWithArgument/View/screen1.dart';

import 'GetxWithBinding/NavigatorWithArgument/Binding/navigator_rout_binding.dart';
import 'GetxWithBinding/NavigatorWithArgument/Binding/screen2_binding.dart';
import 'GetxWithBinding/NavigatorWithArgument/View/navigator_screen.dart';
import 'GetxWithBinding/NavigatorWithArgument/View/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //  translations: Languages(),

      //locale: Locale('en','US'),
      //fallbackLocale: Locale('ur','PK')
      // ,
      initialBinding: NavigatorRoutBinding(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NavigatorScreen(),
      getPages: [
        GetPage(name: '/', page: () => const NavigatorScreen()),
        GetPage(name: '/screen1', page: () => const Screen1()),
        GetPage(name: '/screen2', page: () => const Screen2())
      ],
    );
  }
}
