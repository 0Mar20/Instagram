import 'package:flutter/material.dart';
import 'package:instagram/ProfileDrawerContent/videos.dart';
import 'package:instagram/ProfileDrawerContent/images.dart';


class AllSavedPostsDrawerScreen extends StatefulWidget {
  @override
  _AllSavedPostsDrawerScreenState createState() => _AllSavedPostsDrawerScreenState();
}

class _AllSavedPostsDrawerScreenState extends State<AllSavedPostsDrawerScreen> with SingleTickerProviderStateMixin {

  TabController _tabController ;
  @override
  void initState(){
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  int _currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        elevation: 0.8,
        //centerTitle: true ,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Saved",
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
              ),
            ),
            Text(
              "All Posts",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),


          ],
        ),

        bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            unselectedLabelColor: Colors.white54,
            labelStyle: TextStyle(fontSize: 16),
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.apps,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.ondemand_video,
                  size: 20,
                  color: Colors.black,
                ),
              ),

            ]),
      ),
      body: TabBarView(
          controller: _tabController,
          children: [
            ImagesSavedScreen() , VideosSavedScreen()
          ]),
    );
  }
}
