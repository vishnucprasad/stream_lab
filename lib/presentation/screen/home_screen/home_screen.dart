import 'package:flutter/material.dart';
import 'package:stream_lab/presentation/layout/responsive_layout.dart';
import 'package:stream_lab/presentation/screen/home_screen/layouts/desktop_layout.dart';
import 'package:stream_lab/presentation/screen/home_screen/layouts/mobile_layout.dart';
import 'package:stream_lab/presentation/screen/home_screen/layouts/tab_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileLayout: MobileLayout(),
      tabLayout: TabLayout(),
      desktopLayout: DesktopLayout(),
    );
  }
}
