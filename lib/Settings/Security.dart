import 'package:flutter/material.dart';
import 'package:instagram/Settings/Security/AccessData.dart';
import 'package:instagram/Settings/Security/AppsAndWebsites.dart';
import 'package:instagram/Settings/Security/DownloadData.dart';
import 'package:instagram/Settings/Security/EmailFromInstagram.dart';
import 'package:instagram/Settings/Security/LoginActivity.dart';
import 'package:instagram/Settings/Security/Password.dart';
import 'package:instagram/Settings/Security/SavedLoginInfo.dart';
import 'package:instagram/Settings/Security/SearchHistory.dart';
import 'package:instagram/Settings/Security/TwoFactorAuthentication.dart';

class Security extends StatefulWidget {
  @override
  _SecurityState createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff9fbfc),
        centerTitle: false,
        title: Text(
          'Security',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            size: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:15.0,right: 15, top: 25),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Login Security',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SecurityCards(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Password()),);
                    },
                    iconData: Icons.vpn_key,
                    text: 'Password',
                  ),
                  SecurityCards(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginActivity()),);
                    },
                    iconData: Icons.location_on,
                    text: 'Login Activity',
                  ),
                  SecurityCards(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SavedLoginInfo()),);
                    },
                    iconData: Icons.lock_outline,
                    text: 'Saved Login Info',
                  ),
                  SecurityCards(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TwoFactorAuthentication()),);
                    },
                    iconData: Icons.mobile_off_outlined,
                    text: 'Two Factor Authentication',
                  ),
                  SecurityCards(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EmailsFromInstagram()),);
                    },
                    iconData: Icons.email,
                    text: 'Emails From Instagram',
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Divider(
              thickness: .5,
              color: Colors.black.withOpacity(.2),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15, top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Data and History',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SecurityCards(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AccessData()),);
                    },
                    iconData: Icons.analytics,
                    text: 'Access Data',
                  ),
                  SecurityCards(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DownloadYourData()),);
                      },
                      iconData: Icons.download_sharp,
                      text: 'Download Data'
                  ),
                  SecurityCards(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AppsAndWebsites()),);
                    },
                    iconData: Icons.laptop,
                    text: 'Apps and Websites',
                  ),
                  SecurityCards(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SearchHistory()),);
                    },
                    iconData: Icons.search,
                    text: 'Search History',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecurityCards extends StatelessWidget {
  SecurityCards({@required this.iconData, @required this.text , @required this.onTap});
  final IconData iconData ;
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:30.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          child: Row(
            children: [
              Icon(
                iconData,
                color: Colors.black54,
              ),
              SizedBox(width: 10,),
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize:  20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
