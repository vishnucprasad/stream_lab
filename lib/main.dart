import 'package:flutter/material.dart';
import 'package:stream_lab/core/hive_config.dart';
import 'package:stream_lab/core/injection/injection.dart';
import 'package:stream_lab/presentation/core/stream_lab_app.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await configureHive();
  runApp(const StreamLabApp());
}
