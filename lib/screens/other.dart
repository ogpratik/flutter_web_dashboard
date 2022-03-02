import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/controllers/counterController.dart';
import 'package:get/get.dart';

class OtherScreen extends StatelessWidget {
  final CounterController _counterController = Get
      .find(); //by find() GetX will Automatically assign variable to the controller you register as long as they have same type
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text("Screen was clicked${_counterController.counter.value}"),
        SizedBox(height: 10),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Open Other Scrren"))
      ]),
    );
  }
}
