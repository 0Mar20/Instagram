import 'package:flutter/material.dart';

class GuidesPrivacyScreen extends StatefulWidget {
  @override
  _GuidesPrivacyScreenState createState() => _GuidesPrivacyScreenState();
}

class _GuidesPrivacyScreenState extends State<GuidesPrivacyScreen> {
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
          "Guides Controls",
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
            padding: const EdgeInsets.only(left: 15 , top: 10 , bottom: 20),
            child: Text('Your Posts' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15 ),
            child: Text('Allow Others to Use Your Posts'),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10 , top: 2),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15 , right: 0),
                  child: Container(
                    width: 250,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: Text(
                        'Other people can add your posts to their guides. Your username will always show up with your posts.',
                        style: TextStyle(color: Colors.black45, fontSize: 12),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 35),
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

        ],
      ),
    );
  }
}
