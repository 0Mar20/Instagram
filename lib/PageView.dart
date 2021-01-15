import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class Pages extends StatefulWidget {
  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {

  List<Widget> _Pages = [
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: _Pages,
      ),
    );
  }
}
