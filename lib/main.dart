import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_demo/screen/counter_screen.dart';
import 'package:getx_demo/screen/home_screen.dart';
import 'package:getx_demo/provider/local.dart';
import 'package:getx_demo/screen/second.dart';
import 'package:getx_demo/screen/slider_screen.dart';
import 'package:getx_demo/screen/thired.dart';

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
      //fallbackLocale: Locale('ur','PK'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CounterClass(),
      // getPages: [
      //   GetPage(name: '/', page:()=>HomeScreen()),
      //   GetPage(name: '/secondClass', page: ()=>secondClass()),
      //   GetPage(name: '/thirdClass', page: ()=>thirdClass())
      // ],
    );
  }
}
