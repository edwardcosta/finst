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

    Widget desktopLayout = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.35,
                child: FittedBox(
                    fit: BoxFit.fitHeight,
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset('assets/images/finst-image.jpg'))),
            LayoutBuilder(
              builder: (context, constraints) => SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: Login().build(context, constraints)),
            ),
          ],
        ),
      ],
    );

    return Scaffold(
      body: Responsive(mobile: mobileLayout, desktop: desktopLayout),
    );
  }
}
