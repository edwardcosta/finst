import 'package:finst/constants.dart';
import 'package:finst/controller/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileLayout extends StatelessWidget {
  final Controller controller = Get.put(Controller());

  MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Widget navigationBar = Container(
      color: Colors.deepPurple,
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextButton(
              child: Text(AppStrings.navgiationHome),
              onPressed: () => controller.setIndex(NavigationIndex.home.index),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextButton(
              child: Text(AppStrings.navgiationSettings),
              onPressed: () =>
                  controller.setIndex(NavigationIndex.settings.index),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextButton(
              child: Text(AppStrings.navgiationProfile),
              onPressed: () =>
                  controller.setIndex(NavigationIndex.profile.index),
            ),
          ),
        ],
      ),
    );

    return Column(children: [
      Expanded(child: Obx(() => controller.bodyBuild())),
      navigationBar
    ]);
  }
}
