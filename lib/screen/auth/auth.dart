import 'package:finst/responsive.dart';
import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  final Widget child;

  const AuthLayout({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Widget mobileLayout = Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Container(color: Colors.black),
          ),
          child,
        ],
      ),
    );

    Widget desktopLayout = Scaffold(
      body: Row(
        children: [
          Flexible(
              flex: 3,
              child: Container(
                color: Colors.black,
              )),
          Flexible(
            flex: 5,
            child: child,
          ),
        ],
      ),
    );

    return Responsive(mobile: mobileLayout, desktop: desktopLayout);
  }
}
