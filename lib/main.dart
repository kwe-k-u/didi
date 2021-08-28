import 'package:didi/ui/screens/homescreen/homescreen.dart';
import 'package:didi/ui/screens/landing_page/landing_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widgets is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        bottomAppBarColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          textTheme: Theme.of(context).textTheme
        ),
        primarySwatch: Colors.blue,
        canvasColor: Colors.white,
      ),
      home: LandingPage(),
    );
  }
}
