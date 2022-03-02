import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/screens/home.dart';
import 'package:get/get.dart';  //we are converting material app to get material app because we want to change screens without the build context

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
