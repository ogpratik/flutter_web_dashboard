import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs; //obs makes integer and oberservable
  void increment() {
    counter++;
  }
  //every variable and value we want to track of value we turn that into observable
}
