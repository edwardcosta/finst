import 'package:finst/responsive.dart';
import 'package:finst/screen/home/layout/desktop.dart';
import 'package:finst/screen/home/layout/mobile.dart';
import 'package:finst/screen/home/layout/tablet.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: MobileLayout(),
        tablet: TabletLayout(),
        desktop: DesktopLayout());
  }
}
