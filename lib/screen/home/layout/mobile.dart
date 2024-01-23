import 'package:finst/screen/home/components/dashboard.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  int currentIndex = 0;

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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextButton(
              child: const Text("Home"),
              onPressed: () => setState(() {
                currentIndex = 0;
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextButton(
              child: const Text("Another"),
              onPressed: () => setState(() {
                currentIndex = 1;
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
        children: [Expanded(child: _bodyBuild(currentIndex)), navigationBar]);
  }
}
