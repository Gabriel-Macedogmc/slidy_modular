import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_5/app/shared/utils/theme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: inputDecorationTheme(),
      ),
    ).modular();
  }
}
