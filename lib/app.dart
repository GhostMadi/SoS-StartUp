import 'package:flutter/material.dart';
import 'package:flutter_application_3/my_appview.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyAppView(),
    );
  }
}
