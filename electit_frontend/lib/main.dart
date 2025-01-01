import 'package:flutter/material.dart';

import 'features/shared/config/di.dart';
import 'features/shared/ui/app.dart';

Future<void> main() async {
  await configureDependencies();
  runApp(App());
}
