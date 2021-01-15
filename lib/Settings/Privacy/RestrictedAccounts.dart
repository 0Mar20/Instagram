import 'package:flutter/material.dart';

class RestrictedAccountsPrivacyScreen extends StatefulWidget {
  @override
  _RestrictedAccountsPrivacyScreenState createState() => _RestrictedAccountsPrivacyScreenState();
}

class _RestrictedAccountsPrivacyScreenState extends State<RestrictedAccountsPrivacyScreen> {
  Widget _buildTextFieldinfo() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 20, vertical: 15
      ),
      child: TextFormField(

        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 5 , horizontal: 5),
          hintText: "Search",
          fillColor: Colors.white.withOpacity(.1),
          filled: true,
          prefixIcon: Icon(Icons.search),
          hintStyle: TextStyle(color: Colors.black26, fontSize: 15),
          border:  OutlineInputBorder(
            borderRadius:  BorderRadius.circular(10),
            borderSide:  BorderSide(
                color: Colors.black26
            ),
          ),
        ),
      ),
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
          "Restricted Accounts",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0 , vertical: 20),
                child: Container(
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 45),
                    child: Center(
                      child: Text('Protect yourself from unwanted interactions without having to block or unfollow people you know. Learn how it works',
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black38
                        ),textAlign: TextAlign.center,),
                    ),
                  ),
                ),
              ),

            ],
          ),

          Container(
            height: 5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.grey.withOpacity(.2)))),
          ),

          Container(
              height: 70,
              child: _buildTextFieldinfo()),

          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Text("You haven't restricted anyone" , style: TextStyle(color: Colors.black38),),
          )

        ],
      ),
    );
  }
}
