import 'package:flutter/material.dart';

class ContactsSyncingAccPage extends StatefulWidget {
  @override
  _ContactsSyncingAccPageState createState() => _ContactsSyncingAccPageState();
}

class _ContactsSyncingAccPageState extends State<ContactsSyncingAccPage> {
  bool isOn = false;
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
          "Captions",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5 , top: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Connect Contacts',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 160),
                  child: Switch(
                    value: isOn,
                    onChanged: (value) {
                      setState(() {
                        isOn = value;
                        print(isOn);
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
            padding: const EdgeInsets.only(left: 15 , right: 10 ),
            child: Text("To help people connect on Instagram, your contacts are periodically synced and stored on our servers. You choose which ones to follow. Learn More." ,
              style: TextStyle(color: Colors.black38 , fontSize: 12),),
          ),

        ],
      ),
    );
  }
}
