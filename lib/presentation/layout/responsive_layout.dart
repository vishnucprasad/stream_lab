import 'package:flutter/material.dart';
import 'package:stream_lab/presentation/core/constants.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabLayout,
    required this.desktopLayout,
  });

  final Widget mobileLayout;
  final Widget tabLayout;
  final Widget desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < kMobileMaxWidth) {
          return mobileLayout;
        } else if (constraints.maxWidth < kTabMaxWidth) {
          return tabLayout;
        } else {
          return desktopLayout;
        }
      },
    );
  }
}
