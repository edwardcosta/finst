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
    if (Responsive.isMobile(context)) {
      return Scaffold(
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
    }
    return Scaffold(
      body: Row(
        children: [
          Flexible(
              flex: 1,
              child: Container(
                color: Colors.black,
              )),
          Flexible(
            flex: 1,
            child: child,
          ),
        ],
      ),
    );
  }
}
