import 'package:flutter/material.dart';
import 'package:tut_app/presention_layer/resources/theme_manger.dart';

class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key);
  MyApp._internal(); //privet named constructor
  static final MyApp instance = MyApp._internal(); // single instance--singleton
  factory MyApp() => instance; // factory for the class instance
  int appState = 0;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
    );
  }
}
