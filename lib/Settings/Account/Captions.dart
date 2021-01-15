import 'package:flutter/material.dart';

class CaptionsAccPage extends StatefulWidget {
  @override
  _CaptionsAccPageState createState() => _CaptionsAccPageState();
}

class _CaptionsAccPageState extends State<CaptionsAccPage> {
  bool isOn = true ;
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
            padding: const EdgeInsets.only(bottom: 10 , top: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Captions',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 220),
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

          InkWell(
            onTap: (){},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text('Language' , style: TextStyle(fontSize: 15),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text('English(auto...' , style: TextStyle(color: Colors.black45 , fontSize: 12),),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
