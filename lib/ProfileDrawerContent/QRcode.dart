import 'dart:io';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:image_picker/image_picker.dart';

class QrPageScreen extends StatefulWidget {
  @override
  _QrPageScreenState createState() => _QrPageScreenState();
}

class _QrPageScreenState extends State<QrPageScreen> with SingleTickerProviderStateMixin {
  File _image;
  final picker = ImagePicker();

  Future getImage(ImageSource source) async {
    final pickedFile = await picker.getImage(source: source);
    setState(() {
      _image = File(pickedFile.path);
      print(_image);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.clear,
              color: Colors.white,
              size: 30,
            )),
        actions: [
          Row(
            children: [
              Container(
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent,
                    border: Border(
                      top: BorderSide(color: Colors.white),
                      bottom: BorderSide(color: Colors.white),
                      left: BorderSide(color: Colors.white),
                      right: BorderSide(color: Colors.white),
                    )),
                child: Center(
                    child: Text(
                      'COLOR',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    )),
              ),
              SizedBox(width: 90,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: (){
                      Share.share("assets/images/qrpersoncode.jpg");
                    },
                    child: Icon(Icons.share , color: Colors.white,)),
              )
            ],
          ),
        ],
      ),

      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5 , vertical: 85),
              child: Container(
                height: 270,
                width: 270,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(image: AssetImage('assets/images/qrpersoncode.jpg')),
                        ),


                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35 , right: 30 , top: 5),
                      child: Text('OMAR_ELSAID' , style: TextStyle(color: Colors.lightBlue , fontSize: 27),),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              getImage(ImageSource.camera);
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Center(child: Icon(Icons.photo_camera , color: Colors.white,)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Scan QR code', style: TextStyle(color: Colors.white),),
                )
              ],
            ),
          ),

        ],



      ),

    );
  }
}
