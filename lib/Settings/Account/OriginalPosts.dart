import 'package:flutter/material.dart';

class OriginalPostsAccPage extends StatefulWidget {
  @override
  _OriginalPostsAccPageState createState() => _OriginalPostsAccPageState();
}

class _OriginalPostsAccPageState extends State<OriginalPostsAccPage> {
  Widget _SwitchItem({String name}){
    return Padding(
      padding: const EdgeInsets.only(bottom: 0 , top: 5),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              name,
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 150),
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
    );
  }
  bool isOn = true;
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
          "Original Posts",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 5,),
          _SwitchItem(name: 'Save Original Posts'),
          Padding(
            padding: const EdgeInsets.only(left: 15 , right: 20  , bottom: 5 , top: 5),
            child: Text("Automatically save the unedited photos and videos taken with Instagram's feed camera to your camera roll." ,
              style: TextStyle(color: Colors.black38 , fontSize: 12),),
          ),
          _SwitchItem(name: 'Save Posted Photos'),
          _SwitchItem(name: 'Save Posted Videos'),

          Padding(
            padding: const EdgeInsets.only(right: 40 , bottom: 5 , top: 5),
            child: Text("Saving videos to your phone uses more storage space." ,
              style: TextStyle(color: Colors.black38 , fontSize: 12),),
          ),
        ],
      ),
    );
  }
}
