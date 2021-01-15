import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagram/Welcome.dart';

class AddYourBirthday extends StatefulWidget {
  @override
  _AddYourBirthdayState createState() => _AddYourBirthdayState();
}

class _AddYourBirthdayState extends State<AddYourBirthday> {

  DateTime DateOfBirth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/birthday .png"
                                    ),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "Add Your Birthday",
                            style: TextStyle(
                              fontSize: 23.0,
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "This won't be part of your public profile.",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            "Why do I need to provide my birthday?",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            height: 60.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Color(0xffeeeeee),
                                border: Border.all(
                                    width: 1.0,
                                    color: Colors.grey.withOpacity(0.3)
                                )
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: DateOfBirth.toString(),
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffA7A7A7),
                                  fontSize: 16.0,
                                ),
                                contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Spacer(),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Welcome()
                              ));
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              width: MediaQuery.of(context).size.width,
                              height: 60.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Colors.blue,
                                  border: Border.all(
                                      width: 1.0,
                                      color: Colors.grey.withOpacity(0.3)
                                  )
                              ),
                              child: Center(
                                child: Text(
                                  "Next",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.0
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: CupertinoDatePicker(
                        backgroundColor: Color(0xffeeeeee),
                        mode: CupertinoDatePickerMode.date,
                        initialDateTime: DateTime(2020, 10, 8),
                        onDateTimeChanged: (DateTime newDateTime) {
                          setState(() {
                            DateOfBirth = newDateTime;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      )
    );
  }
}
