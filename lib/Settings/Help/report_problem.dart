import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReportProlemScreen extends StatefulWidget {
  @override
  _ReportProlemScreenState createState() => _ReportProlemScreenState();
}

class _ReportProlemScreenState extends State<ReportProlemScreen> {
  Widget _buildTextFieldinfo() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'What went wrong?',
          fillColor: Colors.white,
          filled: true,
          hintStyle: TextStyle(color: Colors.black26, fontSize: 15),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(254, 254, 254, 1),
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
          "Report a Problem",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: Center(child: Text('Submit', style: TextStyle(color: Colors.blue , fontSize: 16.5),)),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTextFieldinfo(),
          Padding(
            padding: const EdgeInsets.only(left: 30 , top: 15),
            child: InkWell(
              onTap: (){
                showDialog(context: context , builder: (context){
                  return AlertDialog(

                      content: Container(
                          height: 125,
                          width: 100,
                          child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 17),
                                  child: Center(child: Text('Report a Problem', style: TextStyle(fontWeight: FontWeight.bold , fontSize: 17),)),
                                ),
                                Container(
                                  height: 5,
                                  width: MediaQuery.of(context).size.width,
                                  decoration:BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey.withOpacity(.2)
                                          )
                                      )
                                  ) ,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Text('Take Screenshot',),
                                ),
                                Container(
                                  height: 5,
                                  width: MediaQuery.of(context).size.width,
                                  decoration:BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey.withOpacity(.2)
                                          )
                                      )
                                  ) ,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Center(child: Text('Add from Gallery',)),
                                ),


                              ])));});},
              child: Container(
                height: 150,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38),
                ),
                child: Icon(Icons.add , color: Colors.black38,),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30 , top: 15 , right: 30),
            child: Text("Please only leave feedback about Instagram and our features. Visit our Help Center to learn about reporting content posted on Instagram that violates our Community Guidelines, like abuse, spam or intellectual property violations. All reports are subject to our Terms of Use.",
              style: TextStyle(color: Colors.black38),
            ),
          ),
        ],
      ),
    );
  }
}
