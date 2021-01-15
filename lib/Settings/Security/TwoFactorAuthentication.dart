import 'package:flutter/material.dart';

class TwoFactorAuthentication extends StatefulWidget {
  @override
  _TwoFactorAuthenticationState createState() =>
      _TwoFactorAuthenticationState();
}

class _TwoFactorAuthenticationState extends State<TwoFactorAuthentication> {
  bool screenState = false;
  bool _value = false;
  bool _value2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff9fbfc),
        centerTitle: false,
        title: Text(
          'Two-Factor Authentication',
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
      body: screenState
          ? Padding(
        padding: const EdgeInsets.only(left:15.0,right: 15,top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:13.0,right: 13),
              child: Container(
                child: Text(
                  'Choose Your Security Method',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: 13),
            Container(
              child: Text(
                'Choose where you want to get the security code when we need to confirm that it is you logging in.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.withOpacity(.9),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: Container(
                child: Text(
                  'Learn more',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            SizedBox(height: 60,),
            Container(
              child: Text(
                'Two-Factor Authentication',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*3/4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Authentication App (Recommended)',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          child: Text(
                            'We will check to see if you have one. If you do not, we will recommend one to download',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.withOpacity(.9),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Switch(
                      value: _value2,
                      onChanged: (val){
                        setState(() {
                          _value2 =val;
                        });
                      }
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*3/4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Text Message',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          child: Text(
                            'We will send a code to the number you choose',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.withOpacity(.9),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Switch(
                      value: _value,
                      onChanged: (val){
                        setState(() {
                          _value =val;
                        });
                      }
                  ),
                ],
              ),
            ),
          ],
        ),
      )
          : Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 3 / 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 75,
                    child: Image(
                      image: AssetImage('assets/images/phone.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 300,
                    child: Text(
                      'Add Extra Security To Your Account',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      'Two-factor authentication protects your account by requiring an additional code when you log in on a device we do not recognize',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.withOpacity(.8),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Text(
                      'Learn More',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Divider(
                color: Colors.grey.withOpacity(.4),
                thickness: .5,
              ),
              Padding(
                padding:
                const EdgeInsets.only(top: 10.0, right: 15, left: 15),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      screenState = true;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
