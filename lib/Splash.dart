import 'dart:async';

import 'package:flutter/material.dart';
import 'startScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(
        Duration(
          milliseconds: 3000,
        ), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => StartScreen()
      ));
    }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                width: 80.0,
                height: 80.0,
                child: Image.asset(
                  "assets/images/intsalogo.png",
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 100.0,
            child: Text(
              "from",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.0,
                fontSize: 16.0
              ),
            ),
          ),
          Positioned(
            bottom: 70.0,
            child: ShaderMask(
              child: Text(
                "FACEBOOK",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0
                ),
              ),
              shaderCallback: (rect){
                return LinearGradient(
                  colors: [
                    Colors.orange,
                    Colors.red,
                    Colors.blue
                  ],
                ).createShader(rect);
              },
            ),
          ),
        ],
      )
    );
  }
}
