import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacySecurityHelpScreen extends StatefulWidget {
  @override
  _PrivacySecurityHelpScreenState createState() => _PrivacySecurityHelpScreenState();
}

class _PrivacySecurityHelpScreenState extends State<PrivacySecurityHelpScreen> {
  Widget _helpOption({ String name , Function ontap}){
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only( bottom: 25 , left: 20),
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: Text(name , style: TextStyle( color: Colors.black , fontSize: 15),)),
      ),
    );}
  _launchURL({String url}) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
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
          "Privacy and Security Help",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20 , top: 20 , bottom: 25),
            child: Text('Managing Your Account' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),
          _helpOption(name:'Age Requirements', ontap:(){_launchURL(url: 'https://www.facebook.com/help/instagram/517920941588885');}),
          _helpOption(name:'Account Privacy', ontap:(){_launchURL(url: 'https://help.instagram.com/116024195217477');}),
          _helpOption(name:'Location Sharing', ontap:(){_launchURL(url: 'https://help.instagram.com/488619974671134');}),
          _helpOption(name:'Two-Factor Authentication', ontap:(){_launchURL(url: 'https://help.instagram.com/566810106808145');}),
          Container(
            height: 5,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.withOpacity(.3)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20 , top: 20 , bottom: 25),
            child: Text('Customizing your Experience' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),

          _helpOption(name:'Blocking Accounts', ontap:(){_launchURL(url: "https://help.instagram.com/426700567389543");}),
          _helpOption(name:'Removing Followers', ontap:(){_launchURL(url: "https://www.facebook.com/help/instagram/413012278753813");}),
          _helpOption(name:'Managing Photos of You', ontap:(){_launchURL(url: "https://help.instagram.com/496738090375985");}),
          _helpOption(name:'Filtering Comments', ontap:(){_launchURL(url: "https://www.facebook.com/help/instagram/700284123459336");}),
          _helpOption(name:'Turning Comments Off', ontap:(){_launchURL(url: "https://www.facebook.com/help/instagram/1766818986917552");}),
          _helpOption(name:'Deleting Comments', ontap:(){_launchURL(url: "https://www.facebook.com/help/instagram/289098941190483");}),
          _helpOption(name:'Choosing Who Can See Your Story', ontap:(){_launchURL(url: "https://www.facebook.com/help/instagram/1177797265575168");}),
          _helpOption(name:'Choosing Who Can Replay to Your Story', ontap:(){_launchURL(url: "https://www.facebook.com/help/instagram/1133988223332503");}),
          Container(
            height: 5,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.withOpacity(.3)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20 , top: 20 , bottom: 25),
            child: Text("Reporting Content You Don't Like" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),
          _helpOption(name:'Reporting Comments', ontap:(){_launchURL(url: "https://help.instagram.com/198034803689028");}),
          _helpOption(name:'Reporting Accounts or Posts', ontap:(){_launchURL(url: "https://help.instagram.com/192435014247952");}),
          _helpOption(name:'Reporting Intimate Images', ontap:(){_launchURL(url: "https://www.facebook.com/help/instagram/1769410010008691");}),
          _helpOption(name:'Removing Contents From Your Explore', ontap:(){_launchURL(url: "https://www.facebook.com/help/instagram/1105548539497125");}),
          _helpOption(name:'Sensitive Content Screens', ontap:(){_launchURL(url: "https://help.instagram.com/188848648282410");}),


        ],
      ),
    );
  }
}
