import 'package:flutter/material.dart';

class BrowserAutofillAccPage extends StatefulWidget {
  @override
  _BrowserAutofillAccPageState createState() => _BrowserAutofillAccPageState();
}

class _BrowserAutofillAccPageState extends State<BrowserAutofillAccPage> {

  Widget _buildTextFieldinfo({String hint}) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 13,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          fillColor: Color.fromRGBO(253, 253, 253, 1),
          filled: true,
          hintStyle: TextStyle(color: Colors.black26, fontSize: 15),

        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 253, 253, 1),
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
          "Autofill with Instagram?",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
        actions: [
          InkWell(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Center(child: Text('Done' , style: TextStyle(color: Colors.blue , fontSize: 16),)),
            ),
          )
        ],
      ),

      body: ListView(
        children: [
          _buildTextFieldinfo(hint: "First Name"),
          _buildTextFieldinfo(hint: "Last Name"),
          _buildTextFieldinfo(hint: "Address"),
          _buildTextFieldinfo(hint: "Apt/Ste (Optional)"),

          Row(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width/2,
                  child: _buildTextFieldinfo(hint: "State")),
              Container(
                  width: MediaQuery.of(context).size.width/2,
                  child: _buildTextFieldinfo(hint: "Zipcode")),
            ],
          ),

          _buildTextFieldinfo(hint: "Email"),
          _buildTextFieldinfo(hint: "Telephone"),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 15),
            child: Text("Your information is stored securely and only shared when you use autofill to submit a form. Learn more" ,
              style: TextStyle(color: Colors.black38 , fontSize: 13),),
          ),

        ],
      ),

    );
  }
}
