import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CellularDataUsePage extends StatefulWidget {
  @override
  _CellularDataUsePageState createState() => _CellularDataUsePageState();
}

class _CellularDataUsePageState extends State<CellularDataUsePage> {
  bool isOn = false ;
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
          "Cellular Data Settings",
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
            padding: const EdgeInsets.only(left: 15 , top: 20),
            child: Text(
              'Use Less Data',
              style: TextStyle(color: Colors.black, fontSize: 16 , fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5 , top: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Data Saver',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 210),
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
            padding: const EdgeInsets.only(left: 15 , right: 20  , bottom: 20),
            child: Text("When Data Saver is turned on, videos won't load in advance to help you use less data." ,
              style: TextStyle(color: Colors.black45 , fontSize: 12),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15 ,),
                child: Text("High Resolution Media" ,
                  style: TextStyle(color: Colors.black26 , fontSize: 15),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text("Wifi Only" ,
                  style: TextStyle(color: Colors.black12 , fontSize: 12),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
