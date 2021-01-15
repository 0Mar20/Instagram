import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/DM.dart';
import 'package:instagram/comments.dart';
import  'package:stories_for_flutter/stories_for_flutter.dart';
import 'Model/postModel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {},
            child: Container(
                child: Image.asset(
              "assets/images/icons8-camera-48.png",
            ),
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text(
            "Instagram",
            style: TextStyle(
              fontSize: 35.0,
              color: Colors.black,
              fontFamily: "Billabong",
            ),
          ),
        ),
        centerTitle: false,
        automaticallyImplyLeading: true,
        titleSpacing: 4,
        actions: <Widget>[
          InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DM()
                ));
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset("assets/images/dm.png"),
              ))
        ],
      ),
      body: ListView(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          InkWell(
                            onTap: (){},
                            child: Container(
                              width: 60.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.blue,
                                      Colors.orange,
                                      Colors.yellow,
                                      Colors.red,
                                    ]),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/profileimg.jpg"
                                  )
                                )
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 19,
                                height: 19,
                                decoration:
                                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                                child: Icon(
                                  Icons.add_circle,
                                  color: Colors.blueAccent,
                                  size: 19,
                                ),
                              )
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: 80.0,
                        child: Center(
                          child: Text(
                            "Your story",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 12.0, color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      children: List.generate(Posts.length, (index) => _StoriesListView(index))
                  ),
                )
              ],
            ),
          ),
          Divider(
            height: 1.0,
          ),
//          SizedBox(
//            height: 10.0,
//          ),
          _Post(0),
          _Post(1),
          _Post(2),
          _Post(3),
          _Post(4),
          _Post(5),
          _Post(6),
          _Post(7),
          _Post(8),
          _Post(9),
          _Post(10),
          _Post(11),
        ],
      ),
    );
  }

  Widget _StoriesListView(int index) {
    return Stories(
      borderThickness: 2.0,
      highLightColor: Colors.orange,
      fullpageThumbnailSize: 50.0,
      storyStatusBarColor: Colors.blue,
      displayProgress: true,
      storyItemList: [
        // First group of stories
        StoryItem(
            name: Posts[index].accname,
            thumbnail: AssetImage(
              Posts[index].imgUrl,
            ),
            stories: [
              // First story
              Scaffold(
                body: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        Posts[index].story,
                      ),
                    ),
                  ),
                ),
              ),
            ]
        ),
      ],
    );
//    return InkWell(
//      onTap: () {
//
//      },
//      child: Container(
//        margin: EdgeInsets.only(right: 10.0),
//        child: Column(
//          children: <Widget>[
//            Container(
//              width: 70.0,
//              height: 70.0,
//              decoration: BoxDecoration(
//                  shape: BoxShape.circle,
//                  gradient: index == 0 ? LinearGradient(
//                      begin: Alignment.topCenter,
//                      end: Alignment.bottomCenter,
//                      colors: [
//                        Colors.white,
//                        Colors.white,
//                        Colors.white,
//                        Colors.white,
//                      ]) : LinearGradient(
//                      begin: Alignment.topCenter,
//                      end: Alignment.bottomCenter,
//                      colors: [
//                        Colors.blue,
//                        Colors.orange,
//                        Colors.yellow,
//                        Colors.red,
//                      ])),
//              child: Container(
//                margin: EdgeInsets.all(3.0),
//                width: 65.0,
//                height: 65.0,
//                decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(70.0),
//                    image: DecorationImage(
//                        image: AssetImage(Posts[index].imgUrl),
//                        fit: BoxFit.cover),
//                    border: Border.all(color: Colors.white, width: 2.0)),
//              ),
//            ),
//            SizedBox(
//              height: 10.0,
//            ),
//            Container(
//              width: 80.0,
//              child: Center(
//                child: Text(
//                  Posts[index].accname,
//                  overflow: TextOverflow.ellipsis,
//                  style: TextStyle(fontSize: 14.0, color: Colors.black),
//                ),
//              ),
//            )
//          ],
//        ),
//      ),
//    );
  }

  Widget _Post (int index) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.0),
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: index == 0 ? LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white,
                                Colors.white,
                                Colors.white,
                                Colors.white,
                              ]) : LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.blue,
                                Colors.orange,
                                Colors.yellow,
                                Colors.red,
                              ])),
                      child: Container(
                        margin: EdgeInsets.all(2.0),
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70.0),
                            image: DecorationImage(
                                image: AssetImage(Posts[index].imgUrl),
                                fit: BoxFit.cover),
                            border:
                            Border.all(color: Colors.white, width: 2.0)),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      Posts[index].accname,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                IconButton(
                  onPressed: () {
                    bottomSheet(context: context);
                  },
                  icon: Icon(
                    Icons.more_vert,
                    size: 30.0,
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            onDoubleTap: () {
              setState(() {
                Posts[index].loved = true;
              });
            },
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.8,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        Posts[index].postimg,
                      ),
                      fit: BoxFit.cover
                  )
              ),
            ),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      setState(() {
                        Posts[index].loved = !Posts[index].loved;
                      });
                    },
                    icon: Icon(
                      Posts[index].loved == true
                          ? Icons.favorite
                          : Icons.favorite_border,
                      size: 30.0,
                      color: Posts[index].loved == true
                          ? Colors.red
                          : Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Comments()
                      ));
                    },
                    child: Container(
                      width: 25.0,
                      height: 25.0,
                      child: Image.asset("assets/images/comment.png"),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 35.0,
                      height: 35.0,
                      child: Image.asset("assets/images/dm.png"),
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    Posts[index].bookmarked = !Posts[index].bookmarked;
                  });
                },
                icon: Icon(
                  Posts[index].bookmarked == true
                      ? Icons.bookmark
                      : Icons.bookmark_border,
                  size: 30.0,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: <Widget>[
                Text(
                  Posts[index].likesnum.toString(),
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  "likes",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  Posts[index].accname,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Expanded(
                  child: Text(
                    Posts[index].caption,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              width: double.infinity,
              height: 50.0,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5.0),
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70.0),
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/profileimg.jpg",
                            ),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Comments()
                        ));
                      },
                      child: Container(
                        child: Text(
                          "Add a comment...",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey
                          ),
                        )
                      ),
                    ),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              Posts[index].time,
              style: TextStyle(color: Colors.grey, fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }

}

bottomSheet({BuildContext context}) {
  showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          )
      ),
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height/2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  height: 30.0,
                ),
                bottomSheetComponents("Report..."),
                bottomSheetComponents("Turn Off Post Notifications"),
                bottomSheetComponents("About This Account"),
                bottomSheetComponents("Copy Link"),
                bottomSheetComponents("Share to..."),
                bottomSheetComponents("Unfollow"),
                bottomSheetComponents("Mute"),
              ],
            ),
          ),
        );
      });
}

Widget bottomSheetComponents (String title) {
  return Expanded(
    child: InkWell(
      onTap: (){},
      child: Container(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    ),
  );
}
