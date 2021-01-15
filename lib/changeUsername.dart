import 'package:flutter/material.dart';

class ChangeUsername extends StatefulWidget {
  @override
  _ChangeUsernameState createState() => _ChangeUsernameState();
}

class _ChangeUsernameState extends State<ChangeUsername> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "CHANGE USERNAME",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.0
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Pick username for your account. You can always change it later.",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
                color: Color(0xffA7A7A7)
            ),
          ),
          SizedBox(
            height: 20.0,
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
                hintText: "Omar Elsaid",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xffA7A7A7),
                  fontSize: 16.0,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: (){
              Navigator.of(context).pop();
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
      ),
    );
  }
}
