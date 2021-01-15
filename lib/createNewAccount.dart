import 'package:flutter/material.dart';
import 'package:instagram/addYourBirthday.dart';

class CreateNewAccount extends StatefulWidget {
  @override
  _CreateNewAccountState createState() => _CreateNewAccountState();
}

class _CreateNewAccountState extends State<CreateNewAccount> {

  String name;
  String password;

  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: ListView(
            children: <Widget>[
              Text(
                "NAME AND PASSWORD",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0
                ),
                textAlign: TextAlign.center,
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
                  onChanged: (value){
                    setState(() {
                      name = value;
                    });
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Full name",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xffA7A7A7),
                      fontSize: 16.0,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                  ),
                ),
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
                  onChanged: (value){
                    setState(() {
                      password = value;
                    });
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xffA7A7A7),
                      fontSize: 16.0,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: <Widget>[
                    Checkbox(
                      value: checkBoxValue,
                      onChanged: (value){
                        setState(() {
                          checkBoxValue = value;
                        });
                      },
                    ),
                    Text(
                      "Save Password",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xffA7A7A7),
                        fontSize: 14.0,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: (){
                  if(name.isNotEmpty && password.isNotEmpty){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AddYourBirthday()
                    ));
                  }
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  width: MediaQuery.of(context).size.width,
                  height: 60.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: name == null || password == null ? Colors.blue.withOpacity(0.5) : Colors.blue,
                      border: Border.all(
                          width: 1.0,
                          color: Colors.grey.withOpacity(0.3)
                      )
                  ),
                  child: Center(
                    child: Text(
                      "Continue and Sync Contacts",
                      style: TextStyle(
                          color: name == null || password == null ? Colors.white.withOpacity(0.5) : Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: (){
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  child: Center(
                    child: Text(
                      "Continue Without Syncing Contacts",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: name == null || password == null ? Colors.blueAccent.withOpacity(0.3) : Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Container(
                  margin: EdgeInsets.all(20.0),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Your contacts will be periodically synced and stored on Instagram servers to help you and others find friends, and to help us provide a better service. To remove contacts, go to Settings and disconnect.",
                      style: TextStyle(
                        color: Color(0xffA7A7A7),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Learn More',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.teal
                          ),
                        ),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),
      )
    );
  }
}



