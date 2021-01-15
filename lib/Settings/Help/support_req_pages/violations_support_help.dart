import 'package:flutter/material.dart';

class ViolationSupportHelpScreen extends StatefulWidget {
  @override
  _ViolationSupportHelpScreenState createState() => _ViolationSupportHelpScreenState();
}

class _ViolationSupportHelpScreenState extends State<ViolationSupportHelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Violations",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10 , top: 180),
            child: Text("You Don't Have Any Violations" , style: TextStyle(fontSize: 28), textAlign: TextAlign.center,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50 , right: 35 , top: 15 , bottom: 15),
            child: Text("Reed our Community Guidelines to learn what we allow on Instagram and how you can help us report and remove what we don't." , style: TextStyle(fontSize: 13 , color: Colors.black26), textAlign: TextAlign.center,),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15 , top: 0),
            child: Text("See Community Guidelines" , style: TextStyle(fontSize:13 , color: Color.fromRGBO(0, 55, 105, 1) )),
          ),

        ],
      ),
    );
  }
}
