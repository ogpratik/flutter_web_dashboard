import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/controllers/counterController.dart';
import 'package:flutter_web_dashboard/screens/other.dart';
import 'package:get/get.dart';
import 'other.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counterController =
      Get.put(CounterController()); //Declaring Counter Controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() =>
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(child: Text("Clicks:${counterController.counter.value}")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  //Button Created
                  Get.to(OtherScreen());
                },
                child: Text("Open Other Screen")),
          ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
