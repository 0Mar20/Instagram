import 'package:flutter/material.dart';
import 'package:instagram/signup.dart';

import 'TabView.dart';

class SwitchAccounts extends StatefulWidget {
  @override
  _SwitchAccountsState createState() => _SwitchAccountsState();
}

class _SwitchAccountsState extends State<SwitchAccounts> {

  String email;
  String password;

  bool secured = true;

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

  int currentSelected = 0;

  String language = "English";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Center(
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
                    height: 20.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30.0),
                    width: MediaQuery.of(context).size.width,
                    height: 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Color(0xffeeeeee),
                      border: Border.all(
                        width: 1.0,
                        color: Colors.grey.withOpacity(0.3)
                      )
                    ),
                    child: TextFormField(
                      onChanged: (value){
                        setState(() {
                          email = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: "Phone number, email or username",
                        hintStyle: TextStyle(
                          color: Color(0xffA7A7A7),
                          fontSize: 16.0,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0)
                      ),
                    )
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 30.0),
                      width: MediaQuery.of(context).size.width,
                      height: 60.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xffeeeeee),
                          border: Border.all(
                              width: 1.0,
                              color: Colors.grey.withOpacity(0.3)
                          )
                      ),
                      child: TextFormField(
                        onChanged: (value){
                          setState(() {
                            password = value;
                          });
                        },
                        obscureText: secured,
                        decoration: InputDecoration(

                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Color(0xffA7A7A7),
                              fontSize: 16.0,
                            ),
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  secured = !secured;
                                });
                              },
                              icon: Icon(
                                Icons.visibility_off,
                                color: Color(0xffA7A7A7),
                              ),
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0)
                        ),
                      )
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  InkWell(
                    onTap: (){
                      if(email.isNotEmpty || password.isNotEmpty){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TabView()
                        ));
                      }
                    },
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 30.0),
                        width: MediaQuery.of(context).size.width,
                        height: 60.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: email == null || password == null ? Colors.blue.withOpacity(0.5) : Colors.blue,
                            border: Border.all(
                                width: 1.0,
                                color: Colors.grey.withOpacity(0.3)
                            )
                        ),
                      child: Center(
                        child: Text(
                          "Log in",
                          style: TextStyle(
                            color: email == null || password == null ? Colors.white.withOpacity(0.5) : Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Forgot your login details? ",
                        style: TextStyle(
                          color: Color(0xffA7A7A7)
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Text(
                          "Get help logging in.",
                          style: TextStyle(
                            color: Color(0xff0f3057),
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
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
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 7.0),
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/facebook logo.png",
                            ),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => TabView()
                          ));
                        },
                        child: Text(
                          "Log in with Facebook",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0
                          ),
                        ),
                      )
                    ],
                  )
                ],
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
                        "Do not have an account? ",
                        style: TextStyle(
                            color: Color(0xffA7A7A7)
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignUp()
                          ));
                        },
                        child: Text(
                          "Sign up.",
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
      ),
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
