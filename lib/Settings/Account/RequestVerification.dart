import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class RequestVerificationAccPage extends StatefulWidget {
  @override
  _RequestVerificationAccPageState createState() => _RequestVerificationAccPageState();
}

class _RequestVerificationAccPageState extends State<RequestVerificationAccPage> with SingleTickerProviderStateMixin {

  File _image;
  final picker = ImagePicker();

  Future getImage(ImageSource source) async {
    final pickedFile = await picker.getImage(source: source);
    setState(() {
      _image = File(pickedFile.path);
      print(_image);
    });
  }

  Widget _buildTextFieldinfo() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Color.fromRGBO(252, 252,252, 1),
          filled: true,
          border:  OutlineInputBorder(
            borderRadius:  BorderRadius.circular(0),
            borderSide:  BorderSide(
                color: Color.fromRGBO(252, 252, 252, 1)
            ),
          ),
          hoverColor: Colors.orange,
          focusColor: Colors.orange,
        ),
      ),
    );
  }

  List<String> _locations = ['Select a category for your account', 'News/Media', 'Sports', 'Government/Politics', 'Music' , 'Fashion' , 'Entertainment' , 'Blogger/Influence' , 'Business/Brand/Organization' , 'Other']; // Option 2
  String _selectedLocation; // Option 2

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
          "Request Verification",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15 , top: 25 , bottom: 10),
            child: Text("Apply for Instagram Verification" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16), ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15 , bottom: 15 , right: 37),
            child: Text("A verified badgge is a check that appears next to an Instagram account's name to indicate that the account is the authentic presence of a notable public figure, celebrity, global brand or entity it represents." ,
              style: TextStyle(color: Colors.black38, fontSize: 15), ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15 , bottom: 25 , right: 47),
            child: Text("Submitting a request for verification does not guarantee that your account will be verified." ,
              style: TextStyle(color: Colors.black38, fontSize: 15), ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15 , bottom: 10 , right: 47),
            child: Text("Username" ,
              style: TextStyle(color: Colors.black38, fontSize: 13), ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 20,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Colors.grey.withOpacity(.2)))),
              child: Padding(
                padding: const EdgeInsets.only(left: 0 , right: 47),
                child: Text("Omar_Elsaid" ,
                  style: TextStyle(color: Colors.black38, fontSize: 13), ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15 , bottom: 10 , top: 15),
            child: Text("Full Name" ,
              style: TextStyle(color: Colors.black38, fontSize: 13), ),
          ),
          Container(
              height: 30,
              child: _buildTextFieldinfo()),
          Padding(
            padding: const EdgeInsets.only(left: 15 , bottom: 10 , top: 15),
            child: Text("Known As" ,
              style: TextStyle(color: Colors.black38, fontSize: 13), ),
          ),
          Container(
              height: 30,
              child: _buildTextFieldinfo()),

          Padding(
            padding: const EdgeInsets.only(left: 15 , bottom: 0 , top: 15),
            child: Text("Category" ,
              style: TextStyle(color: Colors.black38, fontSize: 13), ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10 , right: 20),
            child: DropdownButton(
              hint: Text('Select a category for your account' , style: TextStyle(fontSize: 13),), // Not necessary for Option 1
              value: _selectedLocation,
              onChanged: (newValue) {
                setState(() {
                  _selectedLocation = newValue;
                });
              },
              items: _locations.map((location) {
                return DropdownMenuItem(
                  child: new Text(location),
                  value: location,
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:  15 , right:  10 , top:  30 , bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Please attach a photo of your ID"),
                InkWell(
                    onTap: () {
                      getImage(ImageSource.gallery);
                    },
                    child: Text("Choose File" , style: TextStyle(color: Colors.blue),)),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15 , right: 20 , top: 5),
            child: Text("We require a government-issued photo Id that shows your name and date of birth (e.g. driver's license, passport or national identification card) or official business document (tax filling, recent utility bill, article of incorporation) in order to review your request." , style: TextStyle(color: Colors.black26),),
          ),


          Padding(
            padding: const EdgeInsets.only(left: 20 , right:  20 , top: 30 , bottom:  20),
            child: Container(
              height: 40,
              width: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Color.fromRGBO(1, 149 , 247, 1).withOpacity(.2)
              ),
              child: Center(child: Text('Send' , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),)),
            ),
          ),

        ],
      ),
    );
  }
}
