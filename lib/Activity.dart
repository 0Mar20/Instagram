import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'Model/ActivityModel.dart';

class Activity extends StatefulWidget {
  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {

  bool follow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          "Activity",
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
              fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50.0,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "This Week",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
         Column(
                children: List.generate(ActivitiesThisWeek.length, (index) => _ActivityWithoutFollow(index))
            ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50.0,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Earlier",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
         Column(
                children: List.generate(ActivitiesThisWeek.length, (index) => ActivitiesEarlier[index].followButton ? _ActivityWithFollow(index) : _ActivityWithoutFollow(index))
            ),
        ],
      )
    );
  }

  Widget _ActivityWithoutFollow( int index) {
    return Container(
      width: double.infinity,
      height: 70.0,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 15.0),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              image: DecorationImage(
                image: AssetImage(ActivitiesEarlier[index].imgUrl),
                fit: BoxFit.cover
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Container(
              child: RichText(
                text: TextSpan(
                  text: ActivitiesThisWeek[index].accname,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold
                  ),
                  children: [
                    TextSpan(
                      text: " ${ActivitiesThisWeek[index].content}",
                      style: TextStyle(
                        fontWeight: FontWeight.w400
                      ),
                    ),TextSpan(
                      text: " ${ActivitiesThisWeek[index].time}",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                      ),
                    ),
                  ]
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _ActivityWithFollow( int index) {

    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 80.0,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 15.0),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                image: DecorationImage(
                  image: AssetImage(ActivitiesEarlier[index].imgUrl),
                  fit: BoxFit.cover
                )
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width-200,
                  child: RichText(
                    text: TextSpan(
                        text: ActivitiesThisWeek[index].accname,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold
                        ),
                        children: [
                          TextSpan(
                            text: " ${ActivitiesThisWeek[index].content}",
                            style: TextStyle(
                                fontWeight: FontWeight.w400
                            ),
                          ),TextSpan(
                            text: " ${ActivitiesThisWeek[index].time}",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        ActivitiesEarlier[index].follow = !ActivitiesEarlier[index].follow;
                      });
                    },
                    child: Container(
                      width: ActivitiesEarlier[index].follow ? 100.0 : 80.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: ActivitiesEarlier[index].follow ? Colors.white : Colors.blueAccent,
                        border: Border.all(
                          width: 1.0,
                          color: ActivitiesEarlier[index].follow ? Colors.grey : Colors.blueAccent,
                        )
                      ),
                      child: Center(
                        child: Text(
                          ActivitiesEarlier[index].follow ? "Following" : "Follow",
                          style: TextStyle(
                            color: ActivitiesEarlier[index].follow ? Colors.black : Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}