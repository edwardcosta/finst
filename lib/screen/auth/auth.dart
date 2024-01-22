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
              child: FittedBox(
                  fit: BoxFit.fitWidth,
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset('assets/images/finst-image.jpg'))),
          child,
        ],
      ),
    );

    Widget desktopLayout = Scaffold(
      body: Row(
        children: [
          Flexible(
              flex: 3,
              child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: FittedBox(
                      fit: BoxFit.fitHeight,
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset('assets/images/finst-image.jpg')))),
          Flexible(
            flex: 4,
            child: child,
          ),
        ],
      ),
    );

    return Responsive(mobile: mobileLayout, desktop: desktopLayout);
  }
}
