import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BrandedContentAccPage extends StatefulWidget {
  @override
  _BrandedContentAccPageState createState() => _BrandedContentAccPageState();
}

class _BrandedContentAccPageState extends State<BrandedContentAccPage> {
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
          "Branded Content Tools",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30 , bottom: 15),
            child: Center(child: Text("Branded Content Tools" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 23),)),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 50 , left: 50 , bottom: 30),
            child: Center(child: Text("Use branded content tool to disclose paid partnerships on post and stories." , style: TextStyle( fontSize: 13 , color: Colors.black38), textAlign: TextAlign.center,) ),
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
            padding: const EdgeInsets.only(top: 20 , bottom: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10 , right: 10),

                  child: Icon(Icons.person_pin , size: 30,),
                ),
                Text("Branded Content Tag" , style: TextStyle(color: Colors.black , fontSize: 16),)
              ],
            ),
          ),

          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 50 , right:60),

                  child: Container(
                      width: 220,
                      child: Text("You're not eligible to use the branded content tag." ,  style: TextStyle( fontSize: 13 , color: Colors.black38)))
              ),
              Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.red),
                  ),
                  child: Center(child: Icon(Icons.clear , color: Colors.red, size: 18,)))
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(right: 190 , top: 15 , bottom: 25),
            child: Text("Learn More" , style: TextStyle(color: Colors.blue , fontSize: 13),),
          ),

          Container(
            height: 5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.grey.withOpacity(.2)))),
          ),

        ],
      ),
    );
  }
}
