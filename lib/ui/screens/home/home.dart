

import 'package:didi/ui/screens/homescreen/homescreen.dart';
import 'package:didi/ui/screens/issue_screen/issue_screen.dart';
import 'package:didi/ui/screens/search_screen/search_screen.dart';
import 'package:didi/ui/screens/home/widgets/custom_bottom_navigator_bar.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
   Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int current = 0;

  List<Widget> _pages = [
    HomeScreen(),
    SearchScreen(),
    IssueScreen()
  ];

  static const List<String> _pageText = [
    "Home",
    "Search",
    "Report an issue"
  ];



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(_pageText[current]),
        centerTitle: true,
      ),
      body: _pages[current],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex : current,
        onTap : (int index) {
          setState(() {
            current = index;
          });
        }
      ),
    );
  }
}
