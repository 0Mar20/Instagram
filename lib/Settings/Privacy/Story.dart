import 'package:flutter/material.dart';

class StoryPrivacyScreen extends StatefulWidget {
  @override
  _StoryPrivacyScreenState createState() => _StoryPrivacyScreenState();
}

class _StoryPrivacyScreenState extends State<StoryPrivacyScreen> {

  int group =1;
  radiochecked(int num){
    setState(() {
      group = num;
    });
  }

  bool isSwitched = false;
  bool isOn = true;
  bool isOnReShare = true;
  bool isONShare = true;
  bool isStory = false ;

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
          "Story",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15 , top: 15 , bottom: 10),
            child: Text("Hide Story From" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15 , top: 15 , bottom: 10),
            child: Text("0 People" , style: TextStyle( fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15 , top: 10 , bottom: 10),
            child: Text("Hide your story and live videos from specific people." , style: TextStyle( fontSize: 13 , color: Colors.black26),),
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
            padding: const EdgeInsets.only(left: 15 , top: 15 , bottom: 10),
            child: Text("Close Friends" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15 , top: 15 , bottom: 15),
            child: Text("0 People" , style: TextStyle( fontSize: 15),),
          ),

          Container(
            height: 5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.grey.withOpacity(.2)))),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15 , top: 15 , bottom: 10),
                child: Text("Allow Message Replies" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
              ),

              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("Your Followers" , style: TextStyle(fontSize: 15),),
                      ),
                      Radio(value: 1, groupValue: group, onChanged: radiochecked,


                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("Followers You Follow Back", style: TextStyle(fontSize: 15),),
                      ),
                      Radio(value: 0, groupValue: group, onChanged: radiochecked),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("Off", style: TextStyle(fontSize: 15),),
                      ),
                      Radio(value: 4, groupValue: group, onChanged: radiochecked),
                    ],
                  ),



                ],
              ),


              Padding(
                padding: const EdgeInsets.only(left: 15 , right: 20 , top:  5 , bottom: 15),
                child: Text("Choose who can replay to your story." , style: TextStyle(color: Colors.black38 , fontSize: 12),),
              ),

            ],
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
            padding: const EdgeInsets.only(left: 15 , top: 15 , bottom: 10),
            child: Text("Saving" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Save to Gallery',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 180),
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
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Save Story to Archive',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 140),
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
            padding: const EdgeInsets.only(left: 15 , top: 10 , bottom: 10 , right: 0),
            child: Text("Automatically save Photos and videos in your archive so you don't have to save them on your phone. Only you can see them after they disappear from your story." , style: TextStyle( fontSize: 13 , color: Colors.black26),),
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
            padding: const EdgeInsets.only(left: 15 , top: 15 , bottom: 10),
            child: Text("Sharing" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),




          Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Allow Resharing to Stories',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 110),
                  child: Switch(
                    value: isONShare,
                    onChanged: (value) {
                      setState(() {
                        isONShare = value;
                        print(isONShare);
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
            padding: const EdgeInsets.only(left: 15 , top: 5 , bottom: 10 , right: 0),
            child: Text("Other people can add your feed posts and IGTV videos to their stories. Your username will always show up with your post." , style: TextStyle( fontSize: 13 , color: Colors.black26),),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Share Your Story to Facebook',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 85),
                  child: Switch(
                    value: isOnReShare,
                    onChanged: (value) {
                      setState(() {
                        isOnReShare = value;
                        print(isOnReShare);
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
            padding: const EdgeInsets.only(left: 15 , top: 5 , bottom: 10 , right: 0),
            child: Text("Let your followers share photos and videos from your story as messages. Only your followers can see what's shared." , style: TextStyle( fontSize: 13 , color: Colors.black26),),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Allow Resharing to Stories',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 110),
                  child: Switch(
                    value: isStory,
                    onChanged: (value) {
                      setState(() {
                        isStory = value;
                        print(isStory);
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
            padding: const EdgeInsets.only(left: 15 , top: 5 , bottom: 10 , right: 0),
            child: Text("Automatically share photos and videos from your story to your Facebook story." , style: TextStyle( fontSize: 13 , color: Colors.black26),),
          ),

        ],
      ),
    );
  }
}
