import 'package:didi/ui/screens/landing_page/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          textTheme: GoogleFonts.poppinsTextTheme(),
          titleTextStyle: GoogleFonts.poppinsTextTheme().headline3!.copyWith(fontWeight: FontWeight.w900)
        ),
        primarySwatch: Colors.blue,
        canvasColor: Colors.white,
        iconTheme: IconTheme.of(context).copyWith(
         color: Colors.black
        )
      ),
      home: LandingPage(),
    );
  }
}
