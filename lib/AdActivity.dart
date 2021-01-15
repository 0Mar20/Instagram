import 'package:flutter/material.dart';

class AdActivity extends StatefulWidget {
  @override
  _AdActivityState createState() => _AdActivityState();
}

class _AdActivityState extends State<AdActivity> {

  bool loved = false;
  bool bookmarked = false;
  int likesnum = 520;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black87,
            size: 30.0,
          ),
        ),
        title: Text(
          "Ad Activity",
          style: TextStyle(
              color: Colors.black87
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 100.0,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Ad Activity",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Text(
                    "See the ads you've recently interacted with and learn more about the brands behind them.",
                    style: TextStyle(
                        fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
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
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.white,
                                      Colors.white,
                                      Colors.white,
                                      Colors.white,
                                    ])),
                            child: Container(
                              margin: EdgeInsets.all(2.0),
                              width: 30.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(70.0),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/tiktok.jpg"),
                                      fit: BoxFit.cover
                                  ),
                                  border:
                                  Border.all(color: Colors.white, width: 2.0)),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "tiktok.forbusiness",
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
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
                      loved = true;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 1.8,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/Ad.jpg",
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
                              loved = !loved;
                            });
                          },
                          icon: Icon(
                            loved == true
                                ? Icons.favorite
                                : Icons.favorite_border,
                            size: 30.0,
                            color: loved == true
                                ? Colors.red
                                : Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        InkWell(
                          onTap: () {},
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
                          bookmarked = !bookmarked;
                        });
                      },
                      icon: Icon(
                        bookmarked == true
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
                        likesnum.toString(),
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
                        "tiktok.forbusiness",
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
                          "Looking to create unique and engaging campaigns on TikTok? Our Marketing Partner Program has nearly 20 certified partners that you can work with to build successful campaigns and take it to the next level. Find a partner that's right for you. https://ads.tiktok.com/marketing-partners",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
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
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Add a comment...",
                              contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                              hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 16.0),
                            ),
                          ),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "12 days ago",
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
