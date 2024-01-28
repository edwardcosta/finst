import 'package:finst/responsive.dart';
import 'package:finst/view/auth/components/login.dart';
import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Widget mobileLayout = Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: FittedBox(
                fit: BoxFit.fitWidth,
                clipBehavior: Clip.hardEdge,
                child: Image.asset('assets/images/finst-image.jpg'))),
        LayoutBuilder(
          builder: (context, constraints) =>
              Login().build(context, constraints),
        )
      ],
    );

    Widget desktopLayout = Row(
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
          child: LayoutBuilder(
            builder: (context, constraints) =>
                Login().build(context, constraints),
          ),
        ),
      ],
    );

    return Scaffold(
      body: Responsive(mobile: mobileLayout, desktop: desktopLayout),
    );
  }
}
