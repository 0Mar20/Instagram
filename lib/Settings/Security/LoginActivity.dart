import 'package:flutter/material.dart';

class LoginActivity extends StatefulWidget {
  @override
  _LoginActivityState createState() => _LoginActivityState();
}

class _LoginActivityState extends State<LoginActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xfff9fbfc),
        centerTitle: false,
        title: Text(
          'Login Activity',
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
        padding: const EdgeInsets.fromLTRB(20,20,20,0),
        child: ListView(
          children: [
            Container(
              child: Text(
                'Was This You?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 23,
                ),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(right:65.0,left: 65),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Open Map',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              child: Text(
                'Where you are logged In',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 23,
                ),
              ),
            ),
            LogInInfo(
              location: 'Mansoura, Ad Daqahliyah',
              time: '1 day ago - Infinix',
            ),
            LogInInfo(
              location: 'Sherbeen, Ad Daqahliyah',
              time: '5 days ago - Infinix',
            ),
            LogInInfo(
              location: 'Mansoura, Ad Daqahliyah',
              time: '10 days ago - Infinix',
            ),
            LogInInfo(
              location: 'Mansoura, Ad Daqahliyah',
              time: '11 days ago - Infinix',
            ),
            LogInInfo(
              location: 'Sherbeen, Ad Daqahliyah',
              time: '13 days ago - Infinix',
            ),
          ],
        ),
      ),
    );
  }
}

class LogInInfo extends StatelessWidget {
  LogInInfo({@required this.location, @required this.time});
  final String location ;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:25.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Icon(
                Icons.location_on,
                size: 30,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    location,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  child: Text(
                    time,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.withOpacity(.8),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Icon(
                Icons.more_horiz,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
