import 'package:flutter/material.dart';
class SavedLoginInfo extends StatefulWidget {
  @override
  _SavedLoginInfoState createState() => _SavedLoginInfoState();
}

class _SavedLoginInfoState extends State<SavedLoginInfo> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Color(0xfff9fbfc),
        centerTitle: false,
        title: Text(
          'Saved Login Info',
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
            Icons.close,
            size: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:15.0,right: 15,top: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'Saved Login Info',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Switch(
                      value: _value,
                      onChanged: (val){
                        setState(() {
                          _value =val;
                        });
                      }
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              child: Text(
                'We will remember your account info for you on this device. You will not need to enter it when you loh in again',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey.withOpacity(.7),
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
