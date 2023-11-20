import 'package:dark_light_/homepage.dart';

import 'package:dark_light_/scendpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//import 'vrabls.dart';
//import 'dart:ui';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  Myapp({super.key});
  static final ValueNotifier<ThemeMode> themeNotifire =
      ValueNotifier(ThemeMode.light);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  //ThemeData _DARK = ThemeData(brightness: Brightness.dark);
  dynamic color = Colors.white;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: Myapp.themeNotifire,
        builder: (context, currentMod, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(primarySwatch: Colors.grey),
            darkTheme: ThemeData.dark(),
            themeMode: currentMod,
            home: homepage(),
          );
        });
  }
}
