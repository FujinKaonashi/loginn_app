import "package:flutter/material.dart";

import 'AnimeBilgiTesti.dart';
import 'app_example/Login_Screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        routes: {
          "/": (context) => LoginPage(),
          "/"
              "AnimeBilgiTesti": (context) => AnimeBilgiTesti(),
        });
  }
}