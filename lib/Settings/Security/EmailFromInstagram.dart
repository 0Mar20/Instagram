import 'package:flutter/material.dart';
class EmailsFromInstagram extends StatefulWidget {
  @override
  _EmailsFromInstagramState createState() => _EmailsFromInstagramState();
}

class _EmailsFromInstagramState extends State<EmailsFromInstagram> {
  List<Widget> bodies =[
    Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: .5,
            color: Colors.black,
          ),
        ),
      ),
      child:  Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15, top :25),
        child: RichText(
          text: TextSpan(
              text: 'This a list of emails Instagram has sent you about security and log in in the last 14 days. You can use it to verify which emails are real and which are fake. ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
              children: [
                TextSpan(
                    text: 'learn more.',
                    style: TextStyle(
                      color: Colors.blue,
                    )
                ),
              ]
          ),
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: .5,
            color: Colors.black,
          ),
        ),
      ),
      child:  Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15, top :25),
        child: RichText(
          text: TextSpan(
              text: 'This a list of emails Instagram has sent you that are not about security and log in in the last 14 days. You can use it to verify which emails are real and which are fake. ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
              children: [
                TextSpan(
                    text: 'learn more.',
                    style: TextStyle(
                      color: Colors.blue,
                    )
                ),
              ]
          ),
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar:  AppBar(
          backgroundColor: Color(0xfff9fbfc),
          centerTitle: false,
          title: Text(
            'Emails From Instagram',
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
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey.withOpacity(.8),
            labelStyle: TextStyle(
              fontSize: 18,
            ),
            indicatorWeight: .8,
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                text:'Security',
              ),
              Tab(
                text:'Other',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: bodies,
        ),
      ),
    );
  }
}
