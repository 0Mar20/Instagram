import 'package:flutter/material.dart';

class ActivityStatusPrivacyScreen extends StatefulWidget {
  @override
  _ActivityStatusPrivacyScreenState createState() => _ActivityStatusPrivacyScreenState();
}

class _ActivityStatusPrivacyScreenState extends State<ActivityStatusPrivacyScreen> {
  bool isSwitched = true;
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
          "Activity Status",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10 , top: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Show Activity Status',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 140),
                  child: Switch(
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
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15 , right: 30 , top: 0 , bottom: 10),
            child: Text("Allow accounts you follow and anyone you message to see when you were last active on Instagram apps. When this   is turned off, you won't be able to see the activity status of other accounts." , style: TextStyle(fontSize: 12 , color: Colors.black87.withOpacity(.6)),),
          ),
        ],
      ),
    );
  }
}
