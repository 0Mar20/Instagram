import 'package:flutter/material.dart';
import 'package:instagram/AdActivity.dart';
import 'package:instagram/AdTopicPreferences.dart';

class Ads extends StatefulWidget {
  @override
  _AdsState createState() => _AdsState();
}

class _AdsState extends State<Ads> {
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
          "Ads",
          style: TextStyle(
              color: Colors.black87
          ),
        ),
      ),
      body: Column(
        children: [
          AdsComponent(
            title: "Ad Activity",
            onTapButton: AdActivity()
          ),
          AdsComponent(
            title: "Ad Topic Preferences",
            onTapButton: AdTopicPreferences()
          ),
        ],
      )
    );
  }

  Widget AdsComponent ({String title, Widget onTapButton}) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => onTapButton
        ));
      },
      child: Container(
        width: double.infinity,
        height: 60.0,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 18.0
              ),
            ),
          ),
        ),
      ),
    );
  }

}
