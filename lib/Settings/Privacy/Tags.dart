import 'package:flutter/material.dart';
import 'package:instagram/Settings/Privacy/ManuallyApprovedTags.dart';
class TagsPrivacyScreen extends StatefulWidget {
  @override
  _TagsPrivacyScreenState createState() => _TagsPrivacyScreenState();
}

class _TagsPrivacyScreenState extends State<TagsPrivacyScreen> {
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
          "Tags",
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
            child: Text("Allow Tags From" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
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

          Container(
            height: 5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.grey.withOpacity(.2)))),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15 , top: 15 , bottom: 20),
            child: Text("Tagged Posts" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),

          InkWell(
            onTap: (){

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TaggedPostsTagsPrivacyPage()));

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15 ),
                  child: Text('Manually Approved Tags'),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(Icons.keyboard_arrow_right , color: Colors.black26,size: 19,),
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15 , right: 15 , top:  20),
            child: Text("Choose who can tag you in their photo and videos. When people try to tag you, they'll see if you don't allow tags from everyone." , style: TextStyle(color: Colors.black38 , fontSize: 12),),
          ),

        ],
      ),
    );
  }
}
