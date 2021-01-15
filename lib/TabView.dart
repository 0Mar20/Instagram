import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/Shop.dart';
import 'Activity.dart';
import 'package:instagram/Gallery.dart';
import 'package:instagram/Profile.dart';
import 'MainSerach.dart';
import 'PageView.dart';

class TabView extends StatefulWidget {
  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {

  List tabs = [
    Pages(),
    MainSearchScreen(),
    CameraPage(),
    Activity(),
    ProfilePage(),
  ];

  int _currentIndex = 0;

  Function love(bool love) {
    setState(() {
      love = !love;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: _BottomNavigationBar(),
    );
  }

  Widget _BottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      iconSize: 30.0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: _currentIndex == 0 ? Colors.black : Colors.grey,
          ),
          title: Text(""),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: _currentIndex == 1 ? Colors.black : Colors.grey,
          ),
          title: Text(""),
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              border: Border.all(width: 1.0, color: Colors.black),
            ),
            child: Center(
              child: Icon(
                Icons.add,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
          ),
          title: Text(""),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            _currentIndex == 3 ? Icons.favorite : Icons.favorite_border,
            color: Colors.black,
          ),
          title: Text(""),
        ),
        BottomNavigationBarItem(
          icon: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    width: 1.0,
                    color: _currentIndex == 4 ? Colors.black : Colors.white),
                borderRadius: BorderRadius.circular(20)
            ),
            child: Container(
                color: Colors.white,
                margin: EdgeInsets.all(5.0),
                child: Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/profileimg.jpg"),
                      )
                  ),
                )
            ),
          ),
          title: Text(""),
        ),
      ],
    );
  }

}
