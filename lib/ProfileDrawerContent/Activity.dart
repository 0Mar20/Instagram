import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:instagram/Settings/Notifications.dart';

class ActivityPageScreen extends StatefulWidget {
  @override
  _ActivityPageScreenState createState() => _ActivityPageScreenState();
}

class _ActivityPageScreenState extends State<ActivityPageScreen> {
  Widget _manageItem({String title , String detail , Function ontap}){
    return InkWell(
      onTap: ontap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12 , top: 20 , bottom: 5),
            child: Text(title),
          ),
          Row(
            children: [
              Container(
                width: 270,
                child: Padding(
                  padding: const EdgeInsets.only(left:12 ),
                  child: Text( detail ,
                      style: TextStyle(fontSize: 13 , color: Colors.grey), textAlign: TextAlign.left

                  ),
                ),
              ),
              SizedBox(width: 50,),
              Icon(Icons.keyboard_arrow_right , color: Colors.grey,),
            ],
          ),

        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        elevation: 1,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.clear,
              color: Colors.black,
            )),
        title: Text(
          'Your Activity',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'Time on Instagram',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.info_outline,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            backgroundColor: Colors.white,
                            child: Container(
                              height: 330,
                              width: 100,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    child: Text(
                                      'Time on Instagram',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 9),
                                    child: Text(
                                        "This is the amount of time you spent on average using Instagram each day during the last 7 days. Time is counted while you're using the Instagram ap on this device. This metric is in development and may change as we improve our methodologies.",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black26
                                        ),
                                        textAlign: TextAlign.center),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 5,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey
                                                    .withOpacity(.2)))),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                      child: Text(
                                        'Learn More',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.blue , fontWeight: FontWeight.bold),
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 5,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey.withOpacity(.2)))),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(fontSize: 16),
                                      )),
                                ],
                              ),
                            ),
                          );
                        });
                  })
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height/2-95,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 130),
                  child: Row(
                    children: [
                      Text("3" , style: TextStyle(color: Colors.pink , fontSize: 40),),
                      Text("h" , style: TextStyle(color: Colors.pink , fontSize: 20 , fontWeight: FontWeight.bold),),
                      Text("25" , style: TextStyle(color: Colors.pink , fontSize: 40),),
                      Text("m" , style: TextStyle(color: Colors.pink , fontSize: 20 , fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                Text("Daily Average" , style: TextStyle(color: Colors.black26 , fontSize: 13),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40 , vertical: 0),
                  child: Text("Average time you spent per day using the Instagram app on this device in the last week" , style: TextStyle(color: Colors.black26 , fontSize: 13),textAlign: TextAlign.center,),
                ),


                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5 , left: 10 , right:  10 , bottom: 0),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 105),
                                child: Container(
                                  width: MediaQuery.of(context).size.width/7-10,
                                  height: 3,
                                  color: Colors.blue.withOpacity(0.05),
                                ),
                              ),
                              Text("Wed" , style: TextStyle(color: Colors.black26)),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 90 ),
                                child: Container(
                                  width: MediaQuery.of(context).size.width/7-10,
                                  height: 20,
                                  color: Colors.blue.withOpacity(.2),
                                ),
                              ),
                              Text("Thu" , style: TextStyle(color: Colors.black26)),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 0 , top: 70),
                                child: Container(
                                  width: MediaQuery.of(context).size.width/7-10,
                                  height: 40,
                                  color: Colors.blue.withOpacity(.4),
                                ),

                              ),
                              Text("Fri" , style: TextStyle(color: Colors.black26)),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 105 ),
                                child: Container(
                                  width: MediaQuery.of(context).size.width/7-10,
                                  height: 5,
                                  color: Colors.blue.withOpacity(.1),
                                ),
                              ),
                              Text("Sat" , style: TextStyle(color: Colors.black26)),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 0 , top: 40),
                                child: Container(
                                  width: MediaQuery.of(context).size.width/7-10,
                                  height: 70,
                                  color: Colors.blue.withOpacity(.6),
                                ),
                              ),
                              Text("Sun" , style: TextStyle(color: Colors.black26)),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 0 , top: 60 ),
                                child: Container(
                                  width: MediaQuery.of(context).size.width/7-10,
                                  height: 50,
                                  color: Colors.blue.withOpacity(.2),
                                ),
                              ),
                              Text("Mon" , style: TextStyle(color: Colors.black26)),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 0 , top: 20 ),
                                child: Container(
                                  width: MediaQuery.of(context).size.width/7-10,
                                  height: 90,
                                  color: Colors.blue.withOpacity(1),
                                ),
                              ),
                              Text("Today" , style: TextStyle(color: Colors.black)),
                            ],
                          ),

                        ],),
                    ),

                  ],
                ),
              ],

            ),
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
            padding: const EdgeInsets.only(right: 218 , top: 15),
            child: Text(
              'Manage Your Time',
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),

          _manageItem(title: "Set Daily Reminder" , detail: "We'll send you a reminder once you've reached the time you set for yourself." , ontap: (){}),
          _manageItem(title: "Notification Settings" , detail: "Choose Which Instagram notification to get. You can also mute push notification." , ontap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NotificationScreen()));
          }),


        ],
      ),
    );
  }
}
