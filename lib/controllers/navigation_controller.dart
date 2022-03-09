import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class NavigationController extends GetxController {
  static NavigationController instance = Get.find();
  final GlobalKey<NavigatorState> navigationKey =
      GlobalKey(); //this will allow us to change the screen.

  Future<List<dynamic>> ?navigateTo(String routeName) {
    navigationKey.currentState?.pushNamed(routeName);
  }

  goBack() => navigationKey.currentState?.pop();
}
