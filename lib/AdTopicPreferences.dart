import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdTopicPreferences extends StatefulWidget {
  @override
  _AdTopicPreferencesState createState() => _AdTopicPreferencesState();
}

class _AdTopicPreferencesState extends State<AdTopicPreferences> {

  bool save = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool _visible = false;

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
          "Ad Topic Preferences",
          style: TextStyle(
              color: Colors.black87
          ),
        ),
        actions: [
          InkWell(
            onTap: (){
              setState(() {
                _visible = !_visible;
              });
            },
            child: Container(
              width: 70.0,
              child: Center(
                child: Text(
                  "Save",
                  style: TextStyle(
                    color: isChecked1 || isChecked2 || isChecked3 ? Colors.blue : Colors.teal,
                    fontSize: 20.0
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "See fewer ads about selected topics",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
                child: RichText(
                  text: TextSpan(
                    text: "These topics are based on feedback about people's ad experiences. We'll show you fewer ads about the topics you selected. this won't affect the overall number of ads you see. ",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xffA7A7A7),
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Learn More',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.teal,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                )
            ),
            SizedBox(
              height: 30.0,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isChecked1 = !isChecked1;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Alcohol",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isChecked1 ? Colors.blue : Colors.white,
                      border: Border.all(
                        color: Colors.grey
                      )
                    ),
                    child: Center(
                      child: isChecked1
                          ? Icon(
                        Icons.check,
                        size: 20.0,
                        color: Colors.white,
                      )
                          : Icon(
                        Icons.check,
                        size: 20.0,
                        color: Colors.white,
                      ),
                    )
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isChecked2 = !isChecked2;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Parenting",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isChecked2 ? Colors.blue : Colors.white,
                        border: Border.all(
                            color: Colors.grey
                        )
                    ),
                    child: Center(
                      child: isChecked2
                          ? Icon(
                        Icons.check,
                        size: 20.0,
                        color: Colors.white,
                      )
                          : Icon(
                        Icons.check,
                        size: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isChecked3 = !isChecked3;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pet's",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isChecked3 ? Colors.blue : Colors.white,
                        border: Border.all(
                            color: Colors.grey
                        )
                    ),
                    child: Center(
                      child: isChecked3
                          ? Icon(
                        Icons.check,
                        size: 20.0,
                        color: Colors.white,
                      )
                          : Icon(
                        Icons.check,
                        size: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Center(
              child: AnimatedOpacity(
                opacity: _visible ? 1.0 : 0.0,
                duration: Duration(seconds: 1),
                // The green box must be a child of the AnimatedOpacity widget.
                child: Container(
                  width: 80.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.black
                  ),
                  child: Center(
                    child: Text(
                      "saved",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



