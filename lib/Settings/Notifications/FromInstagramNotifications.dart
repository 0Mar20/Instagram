import 'package:flutter/material.dart';
class FromInstaNotificationPage extends StatefulWidget {
  @override
  _FromInstaNotificationPageState createState() => _FromInstaNotificationPageState();
}

class _FromInstaNotificationPageState extends State<FromInstaNotificationPage> {

  int group =1;
  radiochecked(int num){
    setState(() {
      group = num;
    });
  }
  int scgroup =2;
  radiochecked2(int num2){
    setState(() {
      scgroup = num2;
    });
  }
  int trdgroup =3;
  radiochecked3(int num3){
    setState(() {
      trdgroup = num3;
    });
  }

  int forgroup =4;
  radiochecked4(int num4){
    setState(() {
      forgroup = num4;
    });
  }
  Widget _radiobutton({String ftxt , String sctxt , int fvalue , int scvalue ,int grbvalue , Function check}){
    return
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(ftxt , style: TextStyle(fontSize: 15),),
              ),
              Radio(value: fvalue, groupValue: grbvalue, onChanged: check,


              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(sctxt, style: TextStyle(fontSize: 15),),
              ),
              Radio(value: scvalue, groupValue: grbvalue, onChanged: check),
            ],
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
          "From Instagram",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),

      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 15 , top: 20 , bottom: 10),
            child: Text("Reminders" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),
          _radiobutton(ftxt: "Off" , sctxt: "On", fvalue: 0 , scvalue: 1  , grbvalue:  group , check: radiochecked),

          Padding(
            padding: const EdgeInsets.only(left: 15 , right: 20),
            child: Text("You have unseen notifications, and other similar notifications." , style: TextStyle(color: Colors.black38 , fontSize: 12),),
          ),

          Container(
            height: 15,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.grey.withOpacity(.1)))),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15 , top: 15 , bottom: 10),
            child: Text("Product Announcements" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),
          _radiobutton(ftxt: "Off" , sctxt: "On", fvalue: 0 , scvalue: 2  , grbvalue:  scgroup , check: radiochecked2),

          Padding(
            padding: const EdgeInsets.only(left: 15 , right: 15),
            child: Text("Download Boomerang, Instagram's latest app." , style: TextStyle(color: Colors.black38 , fontSize: 12),),
          ),

          Container(
            height: 15,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.grey.withOpacity(.1)))),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15 , top: 15 , bottom: 10),
            child: Text("Support Requests" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),
          _radiobutton(ftxt: "Off" , sctxt: "On", fvalue: 0 , scvalue: 3  , grbvalue:  trdgroup , check: radiochecked3),

          Padding(
            padding: const EdgeInsets.only(left: 15 , right: 15),
            child: Text("Your support request from July 10 was just updated." , style: TextStyle(color: Colors.black38 , fontSize: 12),),
          ),

          Container(
            height: 15,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.grey.withOpacity(.1)))),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15 , top: 15 , bottom: 10),
            child: Text("Unrecognized Logins" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),
          _radiobutton(ftxt: "Off" , sctxt: "On", fvalue: 0 , scvalue: 4  , grbvalue:  forgroup , check: radiochecked4),

          Padding(
            padding: const EdgeInsets.only(left: 15 , right: 15),
            child: Text("An unrecognized Apple iphone 11 has logged in from Foster City, CA, USA." , style: TextStyle(color: Colors.black38 , fontSize: 12),),
          ),

          Container(
            height: 15,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.grey.withOpacity(.1)))),
          ),


          Padding(
            padding: const EdgeInsets.only(left: 15 , top: 15 , bottom: 20),
            child: Text("Additional options in system settings..." , style: TextStyle(fontSize: 15 , color: Color.fromRGBO(0, 55, 105, 1)),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15 , right: 20),
            child: Text("These settings affect any Instagram accounts logged into this device" , style: TextStyle(color: Colors.black38 , fontSize: 12),),
          ),

          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,

          ),

        ],
      ),

    );
  }
}
