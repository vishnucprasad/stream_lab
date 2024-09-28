import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stream_lab/domain/connection/models/connection.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

enum HiveBoxes {
  connections,
}

Future<void> configureHive() async {
  if (kIsWeb) {
    Hive.initFlutter('/assets/db');
  } else {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.initFlutter(appDocumentDir.path);
  }

  Hive.registerAdapter<Connection>(ConnectionAdapter());
  await Future.wait([
    Hive.openBox<Connection>(HiveBoxes.connections.name),
  ]);
}
