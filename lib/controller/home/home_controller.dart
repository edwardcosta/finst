import 'package:finst/constants.dart';
import 'package:finst/view/home/components/dashboard.dart';
import 'package:finst/view/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var currentIndex = 0.obs;
  var dataLoaded = false.obs;
  setIndex(int index) => currentIndex.value = index;

  Widget bodyBuild() {
    if (currentIndex.value == NavigationIndex.settings.index) {
      return Container(
        color: Colors.green,
      );
    }
    if (currentIndex.value == NavigationIndex.profile.index) {
      return const ProfilePage();
    }
    return Dashboard();
  }
}
