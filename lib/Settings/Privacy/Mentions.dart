import 'package:flutter/material.dart';

class MentionsPrivacyPage extends StatefulWidget {
  @override
  _MentionsPrivacyPageState createState() => _MentionsPrivacyPageState();
}

class _MentionsPrivacyPageState extends State<MentionsPrivacyPage> {

  int group =1;
  radiochecked(int num){
    setState(() {
      group = num;
    });
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
          "Mentions",
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
            child: Text("Allow @mentions From" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),

          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Everyone" , style: TextStyle(fontSize: 15),),
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
                    child: Text("People You Follow", style: TextStyle(fontSize: 15),),
                  ),
                  Radio(value: 0, groupValue: group, onChanged: radiochecked),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("No One", style: TextStyle(fontSize: 15),),
                  ),
                  Radio(value: 4, groupValue: group, onChanged: radiochecked),
                ],
              ),



            ],
          ),


          Padding(
            padding: const EdgeInsets.only(left: 15 , right: 20 , top:  20),
            child: Text("Choose who can @mention you to link to your account in their stories, comments and captions. When people try to @mention you, they'll see if you don't allow @mentions from everyone." , style: TextStyle(color: Colors.black38 , fontSize: 12),),
          ),

        ],
      ),

    );
  }
}
