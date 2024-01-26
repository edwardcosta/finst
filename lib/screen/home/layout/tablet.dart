import 'package:finst/screen/home/components/dashboard.dart';
import 'package:finst/screen/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabletLayout extends StatelessWidget {
  final Controller controller = Get.put(Controller());

  TabletLayout({super.key});

  Widget _bodyBuild(int index) {
    if (index == 1) {
      return Container(
        color: Colors.green,
      );
    }
    if (index == 2) {
      return Container(
        color: Colors.yellowAccent,
      );
    }
    return Dashboard();
  }

  @override
  Widget build(BuildContext context) {
    Widget navigationBar = Container(
      color: Colors.deepPurple,
      width: 200.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextButton(
              child: const Text("Home"),
              onPressed: () => controller.setIndex(1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextButton(
              child: const Text("Another"),
              onPressed: () => controller.setIndex(1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextButton(
              child: const Text("Profile"),
              onPressed: () => controller.setIndex(2),
            ),
          ),
        ],
      ),
    );

    return Row(
      children: [
        navigationBar,
        Expanded(child: Obx(() => _bodyBuild(controller.currentIndex.value)))
      ],
    );
  }
}
