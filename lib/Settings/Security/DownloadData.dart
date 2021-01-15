import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class DownloadYourData extends StatefulWidget {
  @override
  _DownloadYourDataState createState() => _DownloadYourDataState();
}

class _DownloadYourDataState extends State<DownloadYourData> {
  bool appBarState = false ;
  bool bodyState = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarState ? AppBar(
          backgroundColor: Color(0xfff9fbfc),
          centerTitle: false,
          title: Text(
            'Download Your Data',
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
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Next',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue.withOpacity(.4),
                ),
              ),
            ),
          ],
        ):
        AppBar(
          backgroundColor: Color(0xfff9fbfc),
          centerTitle: false,
          title: Text(
            'Download Your Data',
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

        body: bodyState ? Padding(
          padding: const EdgeInsets.fromLTRB(20,30,20,0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Text(
                  'Enter Your Instagram Password for ahmed.99',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 25),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    fontSize: 17,
                    color: Colors.grey.withOpacity(.8),
                  ),
                ),
              ),
              SizedBox(height: 25),
              RichText(
                text: TextSpan(
                    text: 'Forgot your password? ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    children: [
                      TextSpan(
                        text: 'Get help',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ]
                ),
              ),
            ],
          ),
        ):
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:15.0, right: 15, top: 40),
              child: Container(
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/download.png'),
                        ),
                      ),
                      SizedBox(height: 25,),
                      Container(
                        child: Text(
                          'Get a copy of what You have Shared on Instagram',
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.black,
                              fontWeight: FontWeight.w400
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Text(
                          'We will email you a link to a file with your photos comments , profile information and more. it mau take up to 48 hours to collect this data and send it to you',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey.withOpacity(.8),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              fontSize: 17,
                              color: Colors.grey.withOpacity(.7),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10.0,
              right: 20.0,
              left: 20.0,
              child: InkWell(
                onTap: (){
                  setState(() {
                    appBarState = true;
                    bodyState = true;
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width ,
                  height: 50.0,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8.0)
                  ),
                  child: Center(
                    child: Text(
                      'Request Download',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 25.0,
                child: Container(
                  width: MediaQuery.of(context).size.width ,
                  height: 50.0,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              color: Colors.grey,
                              width: 1.0
                          )
                      )
                  ),
                )
            )
          ],
        )
    );
  }
}
