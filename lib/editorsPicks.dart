import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Wishlist.dart';

class EditorsPicks extends StatefulWidget {
  @override
  _EditorsPicksState createState() => _EditorsPicksState();
}

class _EditorsPicksState extends State<EditorsPicks> {

  bool follow = false;

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
          "Editors' Picks",
          style: TextStyle(
              color: Colors.black87
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.bookmark_border,
              color: Colors.black,
            ),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Wishlist()
              ));
            },
          )
        ],
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index){
            return Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.33,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/Editor.jpg",
                        ),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.black.withOpacity(0.1)
                    ),
                  ),
                  Positioned(
                    left: 20.0,
                    top: 20.0,
                    child: Row(
                      children: [
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/intsalogo.png"
                              ),
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "shop",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              follow = !follow;
                            });
                          },
                          child: Text(
                            follow ? "Following" : "Follow",
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 20.0,
                    left: 20.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "22 products",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "#SelfcareSunday",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
      ),
    );
  }
}
