import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram/Settings/About.dart';
import 'package:instagram/Settings/Account.dart';
import 'package:instagram/Settings/Ads.dart';
import 'package:instagram/Settings/FollowAndInviteFriends.dart';
import 'package:instagram/Settings/Help.dart';
import 'package:instagram/Settings/Notifications.dart';
import 'package:instagram/Settings/Privacy.dart';
import 'package:instagram/Settings/Security.dart';

import 'startScreen.dart';

class SettingsPageScreen extends StatefulWidget {
  @override
  _SettingsPageScreenState createState() => _SettingsPageScreenState();
}

class _SettingsPageScreenState extends State<SettingsPageScreen> {
  Widget _settingitem(Widget icon , String name , Function onTap){
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 15 , top: 8 , bottom: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            icon,
            SizedBox( width: 7,),
            Text(name, style: TextStyle(
              fontSize: 18.0
            ),)
          ],
        ),
      ),
    );
  }
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
          "Settings",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search',
                fillColor: Color.fromRGBO(252, 252, 252, 1),
                filled: true,
                hintStyle: TextStyle(color: Colors.black26, fontSize: 16),
                prefixIcon: Icon( Icons.search, color: Colors.grey,),
              ),
            ),
          ),
          _settingitem(Icon(Icons.person_add), 'Follow and Invite Friends' , (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FollowInviteScreen()));
          }),
          _settingitem(Icon(Icons.notifications_none), 'Notifications' , (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NotificationScreen()));
          }),
          _settingitem(Icon(Icons.lock), 'Privacy' , (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PrivacyPageScreen()));
          }),
          _settingitem(Icon(Icons.security), 'Security' , (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Security()));
          }),
          _settingitem(Icon(Icons.mic), 'Ads' , (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Ads()));
          }),
          _settingitem(Icon(Icons.account_circle), 'Account' , (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AccountPageScreen()));
          }),
          _settingitem(Icon(Icons.help_outline), 'Help' , (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HelpPageScreen()));
          }),
          _settingitem(Icon(Icons.info_outline), 'About' , (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => About()));
          }),
          _settingitem(Icon(Icons.apps), 'Themes' , (){}),


          Padding(
            padding: const EdgeInsets.only(left: 15 , top: 8 , bottom: 10),
            child: Text('Logins' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18.0),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15 , top: 10 , bottom: 10),
            child: Text('Add Account' , style: TextStyle(color: Colors.blue, fontSize: 18.0),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15 , top: 10 , bottom: 10),
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => StartScreen()
                ));
              },
                child: Text('Log Out' , style: TextStyle(color: Colors.blue, fontSize: 18.0),)),
          ),

          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
              color: Color.fromRGBO(245, 245, 245, 1),
              border: Border(
                top: BorderSide(color: Colors.grey.withOpacity(.3)),
              ),
            ),

            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 1),
                    child: Text('from' , style: TextStyle(color: Colors.black26 , fontSize: 12),),
                  ),
                  Text('FACEBOOK' , style: TextStyle(color: Colors.black),),
                ],
              ),
            ),

          ),



        ],
      ),
    );
  }
}
