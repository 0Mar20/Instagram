import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TermsOfUse extends StatefulWidget {
  @override
  _TermsOfUseState createState() => _TermsOfUseState();
}

class _TermsOfUseState extends State<TermsOfUse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff9fbfc),
        centerTitle: false,
        title: Text(
          'Terms Of Use',
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
          Container(
            height: MediaQuery.of(context).size.height/4,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.05),
              border: Border(
                bottom: BorderSide(
                  color: Colors.black.withOpacity(.2),
                  width: 1,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 60,
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset('assets/images/logoInsta.png',fit: BoxFit.cover,),
                        width: 43,
                        height: 45,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 10,
                        height: 45,
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              width: 2,
                              color: Colors.black.withOpacity(.4),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 115,
                        height: 70,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/Instagram-Logo.png',),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:17.0,right:17,top: 13),
                  child: Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(8),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black.withOpacity(.3),
                        ),
                        hintText: 'How Can We Help?',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black.withOpacity(.3),
                        ),
                      ),
                    ),
                    height: 35,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black.withOpacity(.2),
                  width: 1,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,bottom: 10),
              child: Text(
                'Privacy and Safety Center',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.withOpacity(.7),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0 , vertical: 20),
            child: Container(
              child: Text(
                'Terms Of Use',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black.withOpacity(.8),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20.0,top: 40),
            child: Container(
              height: MediaQuery.of(context).size.height*1/3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'Welcome to Instagram!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'These Terms of Use govern your use of Instagram and provide information about the Instagram Service, '
                          'outlined below. When you create an Instagram account or use Instagram, you agree to these terms.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'The Instagram Service is one of the Facebook Products, provided to you by Facebook,'
                          ' Inc. These Terms of Use therefore constitute an agreement between you and Facebook, Inc',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0 , vertical: 60),
            child: Container(
              child: Text(
                'The Instagram Service',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(.8),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0 , vertical: 20),
            child: Container(
              child: Text(
                'We agree to provide you with the Instagram Service. The Service includes all of the Instagram products, features, applications, services, technologies, and software that we provide to advance Instagrams mission: To bring you closer to the people and things you love.',
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black.withOpacity(.8),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0 , vertical: 60),
            child: Container(
              child: Text(
                'The Data Policy',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(.8),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0 , vertical: 20),
            child: Container(
              child: Text(
                'Providing our Service requires collecting and using your information. The Data Policy explains how we collect, use, and share information across the Facebook Products. It also explains the many ways you can control your information, including in the Instagram Privacy and Security Settings. You must agree to the Data Policy to use Instagram.',
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black.withOpacity(.8),
                ),
              ),
            ),
          ),
          SizedBox(height: 50,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*1/5,
            color: Colors.grey.withOpacity(.1),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ABOUT US',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0f3057),
                          ),
                        ),
                        Text(
                          'HELP',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0f3057),
                          ),
                        ),
                        Text(
                          'API',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0f3057),
                          ),
                        ),
                        Text(
                          'JOBS',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0f3057),
                          ),
                        ),
                        Text(
                          'TERMS',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0f3057),
                          ),
                        ),
                        Text(
                          'PRIVACY',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0f3057),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Text(
                        '2020 INSTAGRAM,INC.',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ENGLISH (US)',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'ITALINO',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.withOpacity(.9),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'العربية',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.withOpacity(.9),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'ESPANOL',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.withOpacity(.9),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'DEUTSCH',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.withOpacity(.9),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'TURKEY',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.withOpacity(.9),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'FRENCH',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.withOpacity(.9),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'BAHSA',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.withOpacity(.9),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

