import 'package:flutter/material.dart';

class TaggedPostsTagsPrivacyPage extends StatefulWidget {
  @override
  _TaggedPostsTagsPrivacyPageState createState() => _TaggedPostsTagsPrivacyPageState();
}

class _TaggedPostsTagsPrivacyPageState extends State<TaggedPostsTagsPrivacyPage> {
  bool isSwitched = false;
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
          "Tagged Posts",
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
            padding: const EdgeInsets.only(left: 15 , top: 15 , bottom: 10),
            child: Text("Tag Controls" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Manually Approved Tags',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 120),
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

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15 ),
                child: Text('Pending Tags'),
              ),
              Row(
                children: [
                  Text('0' , style: TextStyle(color: Colors.black26 , fontSize: 12),),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(Icons.keyboard_arrow_right , color: Colors.black26,size: 19,),
                  ),
                ],
              ),

            ],
          ),

        ],
      ),
    );
  }
}
