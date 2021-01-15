import 'package:flutter/material.dart';

class LinkedAccountsPage extends StatefulWidget {
  @override
  _LinkedAccountsPageState createState() => _LinkedAccountsPageState();
}

class _LinkedAccountsPageState extends State<LinkedAccountsPage> {
  Widget _AcccountItem({String url , String name}){
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
          child: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(image: NetworkImage(url) , fit: BoxFit.scaleDown),
            ),
          ),
        ),
        Text(name),
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
          "Linked Accounts",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: _AcccountItem(url: 'https://cdn0.iconfinder.com/data/icons/typicons-2/24/social-facebook-circular-512.png' , name: "Facebook"),
          ),
          _AcccountItem(url: 'https://cdn4.iconfinder.com/data/icons/materia-social-free/24/038_003_twitter_social_network_android_material-512.png' , name: "Twitter"),
          _AcccountItem(url: 'https://icon-library.com/images/tumblr-logo-icon/tumblr-logo-icon-1.jpg' , name: "Tumblr"),
          _AcccountItem(url: 'https://suma-dance.com/wp/wp-content/uploads/2018/05/ameblo_logo-300x300.png' , name: "Ameba"),
          _AcccountItem(url: 'https://img.pngio.com/odnoklassniki-icon-png-50-px-odnoklassniki-png-1600_1600.png' , name: "OK.ru"),
        ],
      ),
    );
  }
}
