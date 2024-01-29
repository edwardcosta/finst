import 'package:finst/responsive.dart';
import 'package:finst/view/profile/layout/mobile.dart';
import 'package:finst/view/profile/layout/tablet.dart';
import 'package:finst/view/profile/layout/desktop.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileLayout(),
        tablet: TabletLayout(),
        desktop: DesktopLayout());
  }
}
