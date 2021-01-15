import 'package:flutter/material.dart';
import 'package:instagram/Settings/Help/support_req_pages/report_review_help.dart';

class ReportSupportHelpScreen extends StatefulWidget {
  @override
  _ReportSupportHelpScreenState createState() => _ReportSupportHelpScreenState();
}

class _ReportSupportHelpScreenState extends State<ReportSupportHelpScreen> {
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
          "Reports",
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
                  MaterialPageRoute(builder: (context) => ReviewReportSupportPage()));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10 , top: 10 , bottom: 5),
              child: Row(
                children: [
                  Icon(Icons.perm_identity , size: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 5 , right:20),
                    child: Container(
                        width: 270,
                        child: Text("You anonymously reported yasminesabry for hate speech or symbols. June 8 Reviewed")),
                  ),
                  Icon(Icons.arrow_forward_ios , color: Colors.black26, size: 20,),
                ],
              ),
            ),
          ),
          Container(
            height: 5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.grey.withOpacity(.2)))),
          ),
        ],
      ),
    );
  }
}
