import 'package:get/get.dart';

class Controller extends GetxController {
  var currentIndex = 0.obs;
  var dataLoaded = false.obs;
  setIndex(int index) => currentIndex.value = index;
}
