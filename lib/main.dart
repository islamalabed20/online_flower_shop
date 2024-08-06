import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:online_flower_shop/view/login.dart';
import 'package:online_flower_shop/view/signup.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode, // Enable it in debug mode only
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder, // Add this line
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFE6F6F6),
        body: SignUpScreen(),
      ),
    );
  }
}
