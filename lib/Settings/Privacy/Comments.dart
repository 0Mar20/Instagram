import 'package:flutter/material.dart';

class CommentsPrivacyScreen extends StatefulWidget {
  @override
  _CommentsPrivacyScreenState createState() => _CommentsPrivacyScreenState();
}

class _CommentsPrivacyScreenState extends State<CommentsPrivacyScreen> {
  bool isSwitched = true;
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
          "Comments",
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
            child: Text('Controls' , style: TextStyle(fontSize: 15),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15 ),
                child: Text('Block Comments From'),
              ),
              Row(
                children: [
                  Text('0 People' , style: TextStyle(color: Colors.black26 , fontSize: 12),),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(Icons.keyboard_arrow_right , color: Colors.black26,size: 19,),
                  ),
                ],
              ),

            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15 , right: 5 , top: 15 , bottom: 10),
            child: Text("Any new comments from people you block won't be visible to anyone but them." , style: TextStyle(fontSize: 12 , color: Colors.black87.withOpacity(.6)),),
          ),

          Container(
            height: 5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.grey.withOpacity(.2)))),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15 , top: 10 , bottom: 20),
            child: Text('Filters' , style: TextStyle(fontSize: 15),),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Hide Offensive Comments',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 100),
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
            padding: const EdgeInsets.only(left: 15 , right: 15 , top: 0 , bottom: 10),
            child: Text("Automatically hide comments that may be offensive from your posts, stories, and live videos." , style: TextStyle(fontSize: 12 , color: Colors.black87.withOpacity(.6)),),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Manual Filter',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 190),
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
            padding: const EdgeInsets.only(left: 15 , right: 15 , top: 0 , bottom: 10),
            child: Text("Hide comments that contain specific words or phrases from your posts, stories, and live videos." , style: TextStyle(fontSize: 12 , color: Colors.black87.withOpacity(.6)),),
          ),

        ],
      ),
    );
  }
}
