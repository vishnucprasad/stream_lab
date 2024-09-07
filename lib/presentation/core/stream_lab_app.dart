import 'package:flutter/material.dart';
import 'package:stream_lab/presentation/screen/home_screen/home_screen.dart';
import 'package:stream_lab/presentation/theme/app_theme.dart';

class StreamLabApp extends StatelessWidget {
  const StreamLabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      home: const HomeScreen(),
    );
  }
}
