import 'package:finst/view/home/components/dashboard.dart';
import 'package:finst/controller/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesktopLayout extends StatelessWidget {
  final Controller controller = Get.put(Controller());

  DesktopLayout({super.key});

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
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: TextButton(
              child: const Text("Home"),
              onPressed: () => controller.setIndex(0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: TextButton(
              child: const Text("Another"),
              onPressed: () => controller.setIndex(1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: TextButton(
              child: const Text("Profile"),
              onPressed: () => controller.setIndex(2),
            ),
          ),
        ],
      ),
    );

    return Column(children: [
      navigationBar,
      Expanded(child: Obx(() => _bodyBuild(controller.currentIndex.value)))
    ]);
  }
}
/*
class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  int currentIndex = 0;

  Future<void> _signOut(BuildContext context) async {
    await _auth.signOut();
  }

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
    return const Dashboard();
  }

  @override
  Widget build(BuildContext context) {
    Widget navigationBar = Container(
      color: Colors.deepPurple,
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: TextButton(
              child: const Text("Home"),
              onPressed: () => setState(() {
                currentIndex = 0;
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: TextButton(
              child: const Text("Another"),
              onPressed: () => setState(() {
                currentIndex = 1;
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: TextButton(
              child: const Text("Profile"),
              onPressed: () => setState(() {
                currentIndex = 2;
              }),
            ),
          ),
        ],
      ),
    );

    return Column(
        children: [navigationBar, Expanded(child: _bodyBuild(currentIndex))]);
  }
}
*/