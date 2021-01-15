import 'package:flutter/material.dart';
import 'package:instagram/HomeScreen.dart';
import 'package:instagram/changeUsername.dart';

import 'TabView.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.27,
            ),
            Text(
              "WELCOME TO INSTAGRAM",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Omar Elsaid",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Find people to follow and start sharing photos. You can change your username anytime.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                  color: Color(0xffA7A7A7)
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => TabView()
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
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ChangeUsername()
                ));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                width: MediaQuery.of(context).size.width,
                height: 50.0,
                child: Center(
                  child: Text(
                    "Change Username",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Container(
                margin: EdgeInsets.all(20.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: ""
                        "By clicking Next, you agree to our ",
                    style: TextStyle(
                      color: Color(0xffA7A7A7),
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Terms',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.teal
                        ),
                      ),
                      TextSpan(
                        text: ', ',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xffA7A7A7)
                        ),
                      ),
                      TextSpan(
                        text: 'Data Policy ',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.teal
                        ),
                      ),
                      TextSpan(
                        text: 'and ',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xffA7A7A7)
                        ),
                      ),
                      TextSpan(
                        text: 'Cookies Policy',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.teal
                        ),
                      ),
                      TextSpan(
                        text: '.',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xffA7A7A7)
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ],
        )
      ),
    );
  }
}
