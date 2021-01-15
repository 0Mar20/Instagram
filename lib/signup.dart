import 'package:flutter/material.dart';
import 'package:instagram/signup_email_phonenumber.dart';
import 'package:instagram/switchAccounts.dart';

import 'TabView.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  List<Map<String, dynamic>> _languages = [
    {
      'title' : 'English',
      'sub' : 'English',
      'selected' : true,
    },
    {
      'title' : 'Dansk',
      'sub' : 'Danish',
      'selected' : false,
    },
    {
      'title' : 'Deutsch',
      'sub' : 'German',
      'selected' : false,
    },
    {
      'title' : 'Espanol',
      'sub' : 'Spanish',
      'selected' : false,
    },
    {
      'title' : 'Francais (Canada)',
      'sub' : 'French (Canada)',
      'selected' : false,
    },
    {
      'title' : 'Francais (France)',
      'sub' : 'French (France)',
      'selected' : false,
    },
    {
      'title' : 'Italiano',
      'sub' : 'Italian',
      'selected' : false,
    },
    {
      'title' : 'Portugues (Brasil)',
      'sub' : 'Portuguese (Brazil)',
      'selected' : false,
    },
    {
      'title' : 'Portugues (Portugal)',
      'sub' : 'Portugues (Portugal)',
      'selected' : false,
    },
    {
      'title' : 'Svenska',
      'sub' : 'Swedish',
      'selected' : false,
    },
    {
      'title' : 'العربية',
      'sub' : 'Arabic',
      'selected' : false,
    },
  ];

  String language = "English";
  int currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Instagram",
                      style: TextStyle(
                        fontSize: 50.0,
                        color: Colors.black,
                        fontFamily: "Billabong",
                      ),
                    ),
                    SizedBox(
                      height: 100.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TabView()
                        ));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        width: MediaQuery.of(context).size.width,
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.deepPurpleAccent,
                        ),
                        child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/facebook logo2.png"
                                        ),
                                      )
                                  ),
                                ),
                                Text(
                                  "  Continue as Omar Madrid",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.0,
                                      color: Colors.white
                                  ),
                                )
                              ],
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30.0),
                      width: MediaQuery.of(context).size.width,
                      height: 50.0,
                      child: Text(
                        "Nour Mohammed, Omar Essam and 1008 other friends are using Instagram",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xffA7A7A7),
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "-------------------------  OR  -------------------------",
                      style: TextStyle(
                          color: Color(0xffA7A7A7),
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => EmailPhonenumber()
                        ));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 30.0),
                        width: MediaQuery.of(context).size.width,
                        height: 50.0,
                        child: Center(
                          child: Text(
                            "Sign up with email or phone number",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 1.0,
                        color: Colors.grey.withOpacity(0.7),
                      ),
                    )
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Already have an account? ",
                        style: TextStyle(
                            color: Color(0xffA7A7A7)
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SwitchAccounts()
                          ));
                        },
                        child: Text(
                          "Log in.",
                          style: TextStyle(
                              color: Color(0xff0f3057),
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: InkWell(
                onTap: (){
                  return showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          contentPadding: EdgeInsets.all(0.0),
                          elevation: 0.0,
                          title: Text(
                            "SELECT YOUR LANGUAGE",
                          ),
                          content: Container(
                            width: double.maxFinite,
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10.0,
                                ),
                                SizedBox(
                                  height: 10.0,
                                  child: Center(
                                    child: Divider(
                                      height: 1.0,
                                      color: Colors.teal,
                                    ),
                                  ),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.search,
                                        size: 30.0,
                                        color: Color(0xffA7A7A7),
                                      ),
                                      hintText: "Search",
                                      hintStyle: TextStyle(
                                          fontSize: 20.0,
                                          color: Color(0xffA7A7A7)
                                      ),
                                      border: InputBorder.none
                                  ),
                                ),
                                Divider(
                                  height: 1.0,
                                  color: Colors.teal,
                                ),
                                Expanded(
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: _languages.length,
                                      itemBuilder: (context, index){
                                        return _Language(
                                            index: index,
                                            title: _languages[index]['title'],
                                            sub: _languages[index]['sub'],
                                            selected: _languages[index]['selected']
                                        );
                                      },
                                    )
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 30.0),
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
//                color: Colors.blue,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          language,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xffA7A7A7),
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xffA7A7A7),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }

  Widget _Language ( {int index, String title, String sub, bool selected} ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      width: double.maxFinite,
      height: 70.0,
      child: ListTile(
        selected: selected,
        onTap: (){

          setState(() {
            _languages[currentSelected]['selected'] = false;
            currentSelected = index;
            _languages[currentSelected]['selected'] = true;
          });

          setState(() {
            language = title;
          });

        },
        title: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w600
          ),
        ),
        subtitle: Text(
          sub,
          style: TextStyle(
              color: Color(0xffA7A7A7),
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

}
