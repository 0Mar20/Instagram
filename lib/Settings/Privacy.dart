import 'package:flutter/material.dart';
import 'package:instagram/Settings/Privacy/AccountsYouFollow.dart';
import 'package:instagram/Settings/Privacy/ActivityStatus.dart';
import 'package:instagram/Settings/Privacy/BlockedAccounts.dart';
import 'package:instagram/Settings/Privacy/Comments.dart';
import 'package:instagram/Settings/Privacy/Guides.dart';
import 'package:instagram/Settings/Privacy/Mentions.dart';
import 'package:instagram/Settings/Privacy/MutedAccounts.dart';
import 'package:instagram/Settings/Privacy/RestrictedAccounts.dart';
import 'package:instagram/Settings/Privacy/Story.dart';
import 'package:instagram/Settings/Privacy/Tags.dart';

class PrivacyPageScreen extends StatefulWidget {
  @override
  _PrivacyPageScreenState createState() => _PrivacyPageScreenState();
}

class _PrivacyPageScreenState extends State<PrivacyPageScreen> {

  Widget _tagsMentions ({dynamic icon ,String name  , Function ontap}){
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(top: 10 , bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10 , right: 5),

                  child: Icon(icon),
                ),
                Text(name , style: TextStyle(color: Colors.black , fontSize: 15),)
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(right: 15 ),
              child: Text('Everyone' , style: TextStyle(color: Colors.black38 , fontSize: 12),),
            )

          ],
        ),
      ),
    );
  }

  Widget _objectinter ({dynamic icon ,String name  , Function ontap}){
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(top: 10 , bottom: 10),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10 , right: 5),

              child: Icon(icon),
            ),
            Text(name , style: TextStyle(color: Colors.black , fontSize: 15),)
          ],
        ),
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
          "Privacy",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10 , top: 15 , bottom: 10),
            child: Text(
              'Account Privacy',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 15),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10 , right: 5),
                child: Icon(Icons.lock_outline),
              ),
              Text(
                'Private Account',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 150),
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
          Container(
            height: 5,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.withOpacity(.3)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10 , top: 15 , bottom: 10),
            child: Text(
              'Interactions',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 15),
            ),
          ),
          _objectinter(icon: Icons.chat_bubble_outline , name: 'Comments' , ontap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CommentsPrivacyScreen()));
          }),
          _tagsMentions(icon: Icons.person_pin , name: 'Tags' , ontap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TagsPrivacyScreen()));
          }),
          _tagsMentions(icon: Icons.alternate_email , name: 'Mentions' , ontap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MentionsPrivacyPage()));
          }),
          _objectinter(icon: Icons.donut_large, name: 'Story' , ontap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => StoryPrivacyScreen()));
          }),
          _objectinter(icon: Icons.map , name: 'Guides' , ontap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => GuidesPrivacyScreen()));
          }),
          _objectinter(icon: Icons.perm_identity , name: 'Activity Status' , ontap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ActivityStatusPrivacyScreen()));
          }),

          SizedBox(height: 5,),

          Container(
            height: 5,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.withOpacity(.3)),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10 , top: 15 , bottom: 10),
            child: Text(
              'Connections',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 15),
            ),
          ),
          _objectinter(icon: Icons.do_not_disturb_off, name: 'Restricted Accounts' , ontap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => RestrictedAccountsPrivacyScreen()));
          }),
          _objectinter(icon: Icons.highlight_off , name: 'Blocked Accounts' , ontap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BlockedAccPrivacyScreen()));
          }),
          _objectinter(icon: Icons.notifications_off , name: 'Muted Accounts' , ontap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MutedAccPrivacyScreen()));
          }),
          _objectinter(icon: Icons.supervisor_account , name: 'Accounts You Follow' , ontap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AccYouFollowPrivacyPage()));
          }),




        ],
      ),
    );
  }
}
