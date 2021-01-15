import 'package:flutter/material.dart';
import 'package:instagram/Settings/Help/support_req_pages/reports_support_help.dart';
import 'package:instagram/Settings/Help/support_req_pages/violations_support_help.dart';

class SupportRequestScreen extends StatefulWidget {
  @override
  _SupportRequestScreenState createState() => _SupportRequestScreenState();
}

class _SupportRequestScreenState extends State<SupportRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Support Requests",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: (){

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ReportSupportHelpScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.only( bottom: 25 , left: 15 , top: 20),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text('Reports' , style: TextStyle( color: Colors.black , fontSize: 15),)),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ViolationSupportHelpScreen()));

            },
            child: Padding(
              padding: const EdgeInsets.only( bottom: 25 , left: 15),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text('Violations' , style: TextStyle( color: Colors.black , fontSize: 15),)),
            ),
          ),
        ],
      ),
    );
  }
}
