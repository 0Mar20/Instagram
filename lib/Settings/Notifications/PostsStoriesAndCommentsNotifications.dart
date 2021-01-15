import 'package:flutter/material.dart';

class PostStoryCommentNotificationPage extends StatefulWidget {
  @override
  _PostStoryCommentNotificationPageState createState() => _PostStoryCommentNotificationPageState();
}

class _PostStoryCommentNotificationPageState extends State<PostStoryCommentNotificationPage> {
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
  int fivegroup =5;
  radiochecked5(int num5){
    setState(() {
      fivegroup = num5;
    });
  }
  int sixgroup =6;
  radiochecked6(int num6){
    setState(() {
      sixgroup = num6;
    });
  }

  Widget _radiobutton({String ftxt , String sctxt , String trdtxt , int fvalue , int scvalue , int trdvalue , int grbvalue , Function check}){
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(trdtxt, style: TextStyle(fontSize: 15),),
              ),
              Radio(value: trdvalue, groupValue: grbvalue, onChanged: check),
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
          "Posts, Stories and Comments",
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
            child: Text("Likes" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),

          _radiobutton(ftxt: "Off" , sctxt: "From People I Follow" , trdtxt: "From Everyone" , fvalue: 0 , scvalue: 2 , trdvalue: 1 , grbvalue:  group , check: radiochecked),



          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text("johnappleseed like your photo." , style: TextStyle(color: Colors.black38 , fontSize: 12),),
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
            child: Text("Likes and Comments on Photos of You" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),

          _radiobutton(ftxt: "Off" , sctxt: "From People I Follow" , trdtxt: "From Everyone" , fvalue: 0 , scvalue: 2 , trdvalue: 3 , grbvalue:  scgroup , check: radiochecked2),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text("johnappleseed commented on a post you're tagged in." , style: TextStyle(color: Colors.black38 , fontSize: 12),),
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
            child: Text("Photos of You" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),

          _radiobutton(ftxt: "Off" , sctxt: "From People I Follow" , trdtxt: "From Everyone" , fvalue: 0 , scvalue: 2 , trdvalue: 3 , grbvalue:  trdgroup , check: radiochecked3),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text("johnappleseed tagged you in a photo." , style: TextStyle(color: Colors.black38 , fontSize: 12),),
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
            child: Text("Comments" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),

          _radiobutton(ftxt: "Off" , sctxt: "From People I Follow" , trdtxt: "From Everyone" , fvalue: 0 , scvalue: 2 , trdvalue: 4 , grbvalue:  forgroup , check: radiochecked4),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text('johnappleseed Commented: "Nice shot!"' , style: TextStyle(color: Colors.black38 , fontSize: 12),),
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
            child: Text("Comments Likes and Pins" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),

          Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("Off" , style: TextStyle(fontSize: 15),),
                    ),
                    Radio(value: 0, groupValue: fivegroup, onChanged: radiochecked5,


                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("On", style: TextStyle(fontSize: 15),),
                    ),
                    Radio(value: 5, groupValue: fivegroup, onChanged: radiochecked5),
                  ],
                ),]),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text('johnappleseed liked your Comment: "Nice shot!" and other similar notifications.' , style: TextStyle(color: Colors.black38 , fontSize: 12),),
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
            child: Text("First Posts and Stories" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),

          _radiobutton(ftxt: "Off" , sctxt: "From People I Follow" , trdtxt: "From Everyone" , fvalue: 0 , scvalue: 2 , trdvalue: 6 , grbvalue:  sixgroup , check: radiochecked6),

          Padding(
            padding: const EdgeInsets.only(left: 15 , right: 20),
            child: Text("See johnappleseed's first story on Instagram, and other similar notifications." , style: TextStyle(color: Colors.black38 , fontSize: 12),),
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
