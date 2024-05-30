import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/app.dart';
import 'package:flutter_application_3/firebase_options.dart';

import 'package:hive_flutter/adapters.dart';

Box? testBox;
void main() async {
  await Hive.initFlutter();
  testBox = await Hive.openBox('box');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
