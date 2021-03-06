import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/local_navigator.dart';
import 'package:get/get.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          child: Container(
        color: Colors.red,
      )),
      Expanded(
        flex: 5,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: localNavigator()),
      )
    ]);
  }
}
