import 'package:flutter/material.dart';

class BlockedAccPrivacyScreen extends StatefulWidget {
  @override
  _BlockedAccPrivacyScreenState createState() => _BlockedAccPrivacyScreenState();
}

class _BlockedAccPrivacyScreenState extends State<BlockedAccPrivacyScreen> {
  Widget _peopleCard({String url , String username , String info , double size}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8 , top: 8 , right: 0 , bottom: 8),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
                image: DecorationImage(image: NetworkImage(url),
                    fit: BoxFit.cover

                )
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(username , style: TextStyle(fontSize: 13 , color: Colors.black),),
            Text(info , style: TextStyle(color: Colors.grey , fontSize: 12),)
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 100 , right: 10),
          child: Container(
            height: 20,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.white,
                border: Border.all(color: Colors.black26)
            ),
            child: Center(child: Text('Unblock' , style: TextStyle(color: Colors.black , fontSize: 12 ,fontWeight: FontWeight.bold),)),
          ),
        ),
      ],
    );

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
          "Blocked Accounts",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: Column(
        children: [
          _peopleCard(url: 'https://www.egypttoday.com/siteimages/Larg/61086.jpg' , username: 'AhmedFahmyOfficial' , size: 12, info: 'Egyptian Actor'),
        ],
      ),
    );
  }
}
