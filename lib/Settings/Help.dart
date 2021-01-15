import 'package:flutter/material.dart';
import 'package:instagram/Settings/Help/privacy_security_help.dart';
import 'package:instagram/Settings/Help/report_problem.dart';
import 'package:instagram/Settings/Help/report_send_feedback.dart';
import 'package:instagram/Settings/Help/support_requests.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpPageScreen extends StatefulWidget {
  @override
  _HelpPageScreenState createState() => _HelpPageScreenState();
}

class _HelpPageScreenState extends State<HelpPageScreen> {
  Widget _helpOption({ String name , Function ontap}){
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only( bottom: 25 , left: 20),
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: Text(name , style: TextStyle( color: Colors.black , fontSize: 15),)),
      ),
    );}
  _launchURL({String url}) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(252, 252, 252, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        elevation: 0.8,
        //centerTitle: true ,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Help",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          _helpOption(name: 'Report a Problem' , ontap: (){
            showDialog(context: context , builder: (context){
              return AlertDialog(

                  content: Container(
                      height: 150,
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text('Report a Problem' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 17),),
                          ),
                          Container(
                            height: 5,
                            width: MediaQuery.of(context).size.width,
                            decoration:BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey.withOpacity(.2)
                                    )
                                )
                            ) ,
                          ),

                          InkWell(
                            onTap: (){_launchURL(url: 'https://help.instagram.com/372161259539444');},
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20 , top: 10),
                              child: Text('Report Spam or Abuse'),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => SendFeedbackScreen()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Text('Send Feedback'),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => ReportProlemScreen()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 0),
                              child: Text('Report a Problem'),
                            ),
                          ),
                        ],
                      )));},);},),

          _helpOption(name: 'Help Center' , ontap: (){_launchURL(url: 'https://help.instagram.com');}),
          _helpOption(name: 'Support Requests' , ontap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SupportRequestScreen()));
          }),
          _helpOption(name: 'Privacy and Security Help' , ontap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PrivacySecurityHelpScreen()));
          }),

        ],
      ),
    );
  }
}
