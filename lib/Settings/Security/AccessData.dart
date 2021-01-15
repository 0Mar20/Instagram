import 'package:flutter/material.dart';
class AccessData extends StatefulWidget {
  @override
  _AccessDataState createState() => _AccessDataState();
}

class _AccessDataState extends State<AccessData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Color(0xfff9fbfc),
        centerTitle: false,
        title: Text(
          'Account Data',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            size: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:25 , bottom: 20),
        child: ListView(
          children: [
            Header(
              title: 'Account Info',
            ),
            SizedBox(height: 30,),
            Date(
              date: 'Date Joined',
              details: 'Jun 20,2015 3:32am',
            ),
            SizedBox(height: 30),
            ViewAll(
              title: 'Account privacy changes',
            ),
            ViewAll(
              title: 'Password changes',
            ),
            ViewAll(
              title: 'Former email addresses',
            ),
            ViewAll(
              title: 'Former phone numbers',
            ),
            Date(
              date: 'Date of birth',
              details: 'Your account does not have any information to show here',
            ),
            SizedBox(height: 10,),
            Date(
              date: 'Date Upgraded to Cross App Messaging',
              details: 'Your account does not have any information to show here',
            ),
            SizedBox(height: 30,),
            Header(
              title: 'Profile Info',
            ),
            SizedBox(height: 25,),
            ViewAll(title: 'Former usernames'),
            ViewAll(title: 'Former full names'),
            ViewAll(title: 'Former bio texts'),
            ViewAll(title: 'Former links in bio'),
            SizedBox(height: 20,),
            Header(title: 'Connections'),
            SizedBox(height: 25,),
            ViewAll(title: 'Current follow requests'),
            ViewAll(title: 'Accounts following you'),
            ViewAll(title: 'Accounts you follow'),
            ViewAll(title: 'Hashtags you follow'),
            ViewAll(title: 'Accounts you blocked'),
            ViewAll(title: 'Accounts you hide stories from'),
            SizedBox(height: 20,),
            Header(title: 'Account Activity'),
            SizedBox(height: 25,),
            ViewAll(title: 'Logins'),
            ViewAll(title: 'Logouts'),
            ViewAll(title: 'Search history'),
            SizedBox(height: 20,),
            Header(title: 'Stories Activity'),
            SizedBox(height: 25,),
            ViewAll(title: 'Polls'),
            ViewAll(title: 'Emoji Sliders'),
            ViewAll(title: 'Questions'),
            ViewAll(title: 'Music Questions'),
            ViewAll(title: 'Countdowns'),
            ViewAll(title: 'Quizzes'),
            SizedBox(height: 20,),
            Header(title: 'Ads'),
            SizedBox(height: 25,),
            ViewAll(title: 'Ads Interests'),
            SizedBox(
              height: 40,
            ),
            Divider(
              thickness: .3,
              color: Colors.black,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BottomPart(
                        data: 'ABOUT',
                      ),
                      BottomPart(
                        data: 'HELP',
                      ),
                      BottomPart(
                        data: 'PRESS',
                      ),
                      BottomPart(
                        data: 'API',
                      ),
                      BottomPart(
                        data: 'JOBS',
                      ),
                      BottomPart(
                        data: 'PRIVACY',
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BottomPart(
                        data: 'TERMS',
                      ),
                      BottomPart(
                        data: 'LOCATIONS',
                      ),
                      BottomPart(
                        data: 'TOP ACCOUNTS',
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BottomPart(
                        data: 'HASHTAGS',
                      ),
                      BottomPart(
                        data: 'LANGUAGE',
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '2020 INSTAGRAM FROM FACEBOOK',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey.withOpacity(.9),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomPart extends StatelessWidget {
  BottomPart({@required this.data});
  final String data;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        data,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
          color: Color(0xff0f3057),
        ),
      ),
    );
  }
}

class ViewAll extends StatelessWidget {
  ViewAll({@required this.title});
  final String title ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:20.0,left: 30),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'View All',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 17,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Date extends StatelessWidget {
  Date({@required this.date,@required this.details});
  final String date;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0,left: 30),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                date,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              child: Text(
                details,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey.withOpacity(.8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  Header({@required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:30.0),
      child: Container(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
