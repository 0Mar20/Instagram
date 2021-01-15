import 'package:flutter/material.dart';
import 'package:instagram/HomeScreen.dart';
import 'package:instagram/createNewAccount.dart';
import 'package:instagram/switchAccounts.dart';

import 'TabView.dart';

class EmailPhonenumber extends StatefulWidget {
  @override
  _EmailPhonenumberState createState() => _EmailPhonenumberState();
}

class _EmailPhonenumberState extends State<EmailPhonenumber> with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 2,
      vsync: this
    );
  }

  String phone = "1091504459";
  String email = "omarelsaid@gmail.com";

  List<Map<String, dynamic>> _Country = [
    {
      'title' : 'Algeria (+93)',
      'selected' : true,
    },
    {
      'title' : 'Andora (+376)',
      'selected' : false,
    },
    {
      'title' : 'Angola (+244)',
      'sub' : 'German',
      'selected' : false,
    },
    {
      'title' : 'Argentina (+54)',
      'sub' : 'Spanish',
      'selected' : false,
    },
    {
      'title' : 'Belgium (+32)',
      'selected' : false,
    },
    {
      'title' : 'Brazil (+55)',
      'selected' : false,
    },
    {
      'title' : 'Canada (+1)',
      'selected' : false,
    },
    {
      'title' : 'China (+86)',
      'selected' : false,
    },
    {
      'title' : 'Egypt (+20)',
      'selected' : false,
    },
    {
      'title' : 'France (+33)',
      'selected' : false,
    },
    {
      'title' : 'Germany (+49)',
      'selected' : false,
    },
    {
      'title' : 'Russia (+7)',
      'selected' : false,
    },
  ];

  int currentSelected = 0;

  String Country = "EG +20";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 200.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/login.png"
                                  ),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        Container(
                          height: 60.0,
                          width: double.infinity,
                          child: TabBar(
                            controller: tabController,
                            tabs: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.teal,
                                            width: 0.2
                                        )
                                    )
                                ),
                                child: Center(
                                  child: Text(
                                    "PHONE",
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.teal,
                                            width: 0.2
                                        )
                                    )
                                ),
                                child: Center(
                                  child: Text(
                                    "EMAIL",
                                  ),
                                ),
                              ),
                            ],
                            labelStyle: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600
                            ),
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.teal,
                            indicatorColor: Colors.black,
                            isScrollable: false,
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height/3,
                          child: TabBarView(
                            controller: tabController,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5.0),
                                        color: Color(0xffeeeeee),
                                        border: Border.all(
                                            width: 1.0,
                                            color: Color(0xffA7A7A7).withOpacity(0.5)
                                        )
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 2,
                                          child: InkWell(
                                            onTap: (){
                                              return showDialog(
                                                  context: context,
                                                  builder: (context){
                                                    return AlertDialog(
                                                      contentPadding: EdgeInsets.all(10.0),
                                                      elevation: 0.0,
                                                      title: Text(
                                                        "SELECT YOUR COUNTRY",
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
                                                                  hintText: "Country name or code",
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
                                                                  itemCount: _Country.length,
                                                                  itemBuilder: (context, index){
                                                                    return _country(
                                                                        index: index,
                                                                        title: _Country[index]['title'],
                                                                        selected: _Country[index]['selected']
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
                                              child: Center(
                                                child: Text(
                                                  Country,
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 16.0,
                                                      color: Color(0xffA7A7A7)
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        VerticalDivider(
                                          width: 1.0,
                                          color: Color(0xffA7A7A7),
                                          indent: 10.0,
                                          endIndent: 10.0,
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: Container(
                                            child: TextFormField(
                                              onChanged: (value){
                                                setState(() {
                                                  phone = value;
                                                });
                                              },
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: phone,
                                                hintStyle: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xffA7A7A7),
                                                  fontSize: 16.0,
                                                ),
                                                contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),

                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            child: Center(
                                              child: Icon(
                                                Icons.close,
                                                color: Colors.blueGrey,
                                                size: 30.0,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Text(
                                    "You may receive SMS updates from Instagram and can opt out at any time",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xffA7A7A7),
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  InkWell(
                                    onTap: (){
                                      if(phone.isNotEmpty){
                                        return showDialog(
                                            context: context,
                                            builder: (context){
                                              return Container(
                                                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 100.0),
                                                child: AlertDialog(
                                                    contentPadding: EdgeInsets.all(0.0),
                                                    elevation: 0.0,
                                                    content: Column(
                                                      children: <Widget>[
                                                        Container(
                                                          margin: EdgeInsets.only(top: 30.0),
                                                          width: 100.0,
                                                          height: 100.0,
                                                          decoration: BoxDecoration(
                                                              borderRadius: BorderRadius.circular(50.0),
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                    "assets/images/profileimg.jpg",
                                                                  ),
                                                                  fit: BoxFit.cover
                                                              )
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 40.0,
                                                        ),
                                                        Text(
                                                          "Log in as",
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                              fontWeight: FontWeight.w600,
                                                              fontSize: 20.0
                                                          ),
                                                        ),
                                                        Text(
                                                          "omar_madrid_99?",
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                              fontWeight: FontWeight.w600,
                                                              fontSize: 20.0
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 15.0,
                                                        ),
                                                        Text(
                                                          "It looks like you already have an Instagram account.",
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize: 16.0,
                                                            color: Colors.teal,
                                                          ),
                                                        ),
                                                        Spacer(),
                                                        InkWell(
                                                          onTap: (){
                                                            Navigator.of(context).pushReplacement(MaterialPageRoute(
                                                                builder: (context) => TabView()
                                                            ));
                                                          },
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                                border: Border(
                                                                    top: BorderSide(
                                                                        width: 1.0,
                                                                        color: Colors.teal.withOpacity(0.3)
                                                                    )
                                                                )
                                                            ),
                                                            width: double.infinity,
                                                            height: 55.0,
                                                            child: Center(
                                                              child: Text(
                                                                "Continue as omar_madrid_99",
                                                                style: TextStyle(
                                                                    color: Colors.blueAccent,
                                                                    fontWeight: FontWeight.bold
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        InkWell(
                                                          onTap: (){
                                                            Navigator.of(context).push(MaterialPageRoute(
                                                                builder: (context) => CreateNewAccount()
                                                            ));
                                                          },
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                                border: Border(
                                                                    top: BorderSide(
                                                                        width: 1.0,
                                                                        color: Colors.teal.withOpacity(0.3)
                                                                    )
                                                                )
                                                            ),
                                                            width: double.infinity,
                                                            height: 55.0,
                                                            child: Center(
                                                              child: Text(
                                                                  "Create New Account"
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                ),
                                              );
                                            }
                                        );
                                      }
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5.0),
                                        color: Colors.deepPurpleAccent,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Next",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5.0),
                                        color: Color(0xffeeeeee),
                                        border: Border.all(
                                            width: 1.0,
                                            color: Color(0xffA7A7A7).withOpacity(0.5)
                                        )
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 5,
                                          child: Container(
                                            child: TextFormField(
                                              onChanged: (value){
                                                email = value;
                                              },
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: email,
                                                hintStyle: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xffA7A7A7),
                                                  fontSize: 16.0,
                                                ),
                                                contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            margin: EdgeInsets.all(10.0),
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: Icon(
                                                Icons.close,
                                                color: Colors.blueGrey,
                                                size: 30.0,
                                              ),
                                            ),
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
                                      if(email.isNotEmpty){
                                        Navigator.of(context).push(MaterialPageRoute(
                                            builder: (context) => CreateNewAccount()
                                        ));
                                      }
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5.0),
                                        color: Colors.deepPurpleAccent,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Next",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
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
          ],
        ),
      ),
    );
  }

  Widget _country ( {int index, String title, bool selected} ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      width: double.maxFinite,
      height: 75.0,
      child: Column(
        children: [
          ListTile(
            selected: selected,
            onTap: (){

              setState(() {
                _Country[currentSelected]['selected'] = false;
                currentSelected = index;
                _Country[currentSelected]['selected'] = true;
              });

              setState(() {
                Country = title;
              });

            },
            title: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          )
        ],
      ),
    );
  }

}
