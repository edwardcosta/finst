import 'package:finst/constants.dart';
import 'package:finst/controller/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabletLayout extends StatelessWidget {
  final Controller controller = Get.put(Controller());

  TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Widget navigationBar = Container(
      color: Colors.deepPurple,
      width: 200.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextButton(
                child: Text(AppStrings.navgiationHome),
                onPressed: () =>
                    controller.setIndex(NavigationIndex.home.index),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextButton(
                child: Text(AppStrings.navgiationSettings),
                onPressed: () =>
                    controller.setIndex(NavigationIndex.settings.index),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextButton(
                child: Text(AppStrings.navgiationProfile),
                onPressed: () =>
                    controller.setIndex(NavigationIndex.profile.index),
              ),
            ),
          ),
        ],
      ),
    );

    return Row(
      children: [
        navigationBar,
        Expanded(child: Obx(() => controller.bodyBuild()))
      ],
    );
  }
}
