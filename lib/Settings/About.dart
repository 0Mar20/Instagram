import 'package:flutter/material.dart';
import 'package:instagram/Settings/About/DataPolicy.dart';
import 'package:instagram/Settings/About/OpenSourceLibraries.dart';
import 'package:instagram/Settings/About/TermsOfUse.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}
class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xfff9fbfc),
          centerTitle: false,
          title: Text(
            'About',
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AboutData(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PrivacyPolicy()),);
                },
                title: 'Data Policy',
              ),
              SizedBox(
                height: 25,
              ),
              AboutData(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TermsOfUse()),);
                },
                title: 'Terms of use',
              ),
              SizedBox(
                height: 25,
              ),
              AboutData(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OpenSourceLibraries()),);
                },
                title: 'Open Source Libraries',
              ),
            ],
          ),
        )
    );
  }
}

class AboutData extends StatelessWidget {
  AboutData ({@required this.title , @required this.onTap});
  final String title;
  final Function onTap ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
