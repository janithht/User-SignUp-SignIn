// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, slash_for_doc_comments

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:frontend/forgotpassword.dart';
import 'package:frontend/loginscreen.dart';
import 'package:frontend/otp_screen.dart';
import 'package:frontend/send_otp.dart';
import 'package:device_preview/device_preview.dart';

/**
 * This is the main widget
 */

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Login UI',
      home: LoginScreen(), //loginscreen()
      debugShowCheckedModeBanner: false,
    );
  }
}
