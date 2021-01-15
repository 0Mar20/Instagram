import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/Settings/Notifications/DirectMessagesNotifications.dart';
import 'package:instagram/Settings/Notifications/EmailAndSMSNotifications.dart';
import 'package:instagram/Settings/Notifications/FollowingAndFollowersNotifications.dart';
import 'package:instagram/Settings/Notifications/FromInstagramNotifications.dart';
import 'package:instagram/Settings/Notifications/LiveAndIGTVNotifications.dart';
import 'package:instagram/Settings/Notifications/PostsStoriesAndCommentsNotifications.dart';
class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  Widget _option({ String name , Function ontap}){
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only( bottom: 25 , left: 20),
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: Text(name , style: TextStyle( color: Colors.black , fontSize: 15),)),
      ),
    );
  }
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(252, 252, 252, 1),
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
        title: Text(
          "Notifications",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only( top: 20 , left: 20 , bottom: 20),
            child: Text('Push Notifications' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black , fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Pause All',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      });
                    },
                    activeTrackColor: Colors.blueAccent.withOpacity(.7),
                    activeColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ),

          _option(name:'Posts, Stories and Comments', ontap:(){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PostStoryCommentNotificationPage()));
          }),
          _option(name:'Following and Followers', ontap:(){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FollowingFollowersNotificationPage()));
          }),
          _option(name:'Direct Messages', ontap:(){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DirectMessagesNotificationPage()));
          }),
          _option(name:'Live and IGTV', ontap:(){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LiveIGTVNotificationPage()));
          }),
          _option(name:'From Instagram', ontap:(){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FromInstaNotificationPage()));
          }),
          Container(
            height: 0,
            decoration:BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.black12
                    )
                )
            ) ,
          ),
          Padding(
            padding: const EdgeInsets.only( top: 15 , left: 20 , bottom: 20),
            child: Text('Other Notification Types' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black , fontSize: 15),),
          ),

          _option(name:'Email and SMS', ontap:(){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => EmailSmsNotificationPage()));
          }),


        ],
      ),
    );
  }
}
