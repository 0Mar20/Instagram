import 'package:flutter/material.dart';

class MutedAccPrivacyScreen extends StatefulWidget {
  @override
  _MutedAccPrivacyScreenState createState() => _MutedAccPrivacyScreenState();
}

class _MutedAccPrivacyScreenState extends State<MutedAccPrivacyScreen> {
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
          "Muted Accounts",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50 , horizontal: 50),
            child: Text("You haven't muted anyone." , style: TextStyle(color: Colors.black26 , fontSize: 16),),
          ),
        ],
      ),
    );
  }
}
