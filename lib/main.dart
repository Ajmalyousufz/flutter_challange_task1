import 'package:flutter/material.dart';
//import 'package:flutter_sharepreferences/inner_page.dart';
import 'package:flutter_sharepreferences/sign_page.dart';
//import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Splash Screen',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        debugShowCheckedModeBanner: false,
        home: signPage(singout: false));
  }
}
