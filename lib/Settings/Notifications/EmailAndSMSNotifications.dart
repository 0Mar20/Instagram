import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class EmailSmsNotificationPage extends StatefulWidget {
  @override
  _EmailSmsNotificationPageState createState() => _EmailSmsNotificationPageState();
}

class _EmailSmsNotificationPageState extends State<EmailSmsNotificationPage> {
  bool isSwitched = true ;
  Widget _ItemSwitch({String title , String details}){
    return  Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20 , top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    height: 30,
                    width: 250,
                    child: Text(
                      details,
                      style: TextStyle(color: Colors.black38, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                print(isSwitched);
              });
            },
            activeTrackColor: Colors.blueAccent.withOpacity(.7),
            activeColor: Colors.blue,
          ),
        ],
      ),
    );
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
          "Email and SMS Notifications",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: _ItemSwitch(title: "FeedBack Emails" ,details: "Give feedback on Instagram." , ),
          ),
          _ItemSwitch(title: "Reminder Emails" ,details: "Get notifications you may have missed." ,  ),
          _ItemSwitch(title: "Product Emails" ,details: "Get tips about Instagram's tools." ,  ),
          _ItemSwitch(title: "News Emails" ,details: "Learn about new Instagram features." , ),

          _ItemSwitch(title: "Support Emails" ,details: "Get update on reports and violations of our Community Guidelines." , ),
        ],
      ),

    );
  }
}
