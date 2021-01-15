import 'package:flutter/material.dart';
import 'package:share/share.dart';

class FollowInviteScreen extends StatefulWidget {
  @override
  _FollowInviteScreenState createState() => _FollowInviteScreenState();
}

class _FollowInviteScreenState extends State<FollowInviteScreen> {
  Widget _followinviteitem({Widget icon, String name, Function onTap}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            icon,
            SizedBox(
              width: 7,
            ),
            Text(name)
          ],
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
          "Follow and Invite Friends",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          _followinviteitem(
              icon: Icon(Icons.person_add),
              name: 'Follow Contacts',
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        backgroundColor: Colors.white,
                        child: Container(
                          height: 450,
                          width: 60,
                          child: Column(
                            children: [
                              Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/facebookcontact.jpg')),
                                ),
                              ),

                              Container(
                                child: Text(
                                  'Find People to Follow',
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 9),
                                child: Text(
                                    "To help people connect on Instagram, you con Choose to have your contacts periodically synced and stored on our servers. You pick which contacts to follow. Disconnect anytime to stop syncing.",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black26),
                                    textAlign: TextAlign.center),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 5,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color:
                                            Colors.grey.withOpacity(.2)))),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                  child: Text(
                                    'Get Started',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 5,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color:
                                            Colors.grey.withOpacity(.2)))),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                  child: Text(
                                    'Learn More',
                                    style: TextStyle(fontSize: 16),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 5,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color:
                                            Colors.grey.withOpacity(.2)))),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.pop(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FollowInviteScreen()));
                                },
                                child: Center(
                                    child: Text(
                                      'Close',
                                      style: TextStyle(fontSize: 16),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              }),
          _followinviteitem(
              icon: Icon(Icons.phone_android),
              name: 'Invite Friends by WhatsApp',
              onTap: () {
                Share.share("I'm on Instagram as @Omar_Elsaid. Install the app to follow my photos and videos. https://www.instagram.com/invites/contact/?i=iogt5pyw4zco&utm_content=1tvo1ja");
              }),
          _followinviteitem(
              icon: Icon(Icons.email),
              name: 'Invite Friends by Email',
              onTap: () {
                Share.share("I'm on Instagram as @Omar_Elsaid. Install the app to follow my photos and videos. https://www.instagram.com/invites/contact/?i=iogt5pyw4zco&utm_content=1tvo1ja");
              }),
          _followinviteitem(
              icon: Icon(Icons.sms),
              name: 'Invite Friends by SMS',
              onTap: () {
                Share.share("I'm on Instagram as @Omar_Elsaid. Install the app to follow my photos and videos. https://www.instagram.com/invites/contact/?i=iogt5pyw4zco&utm_content=1tvo1ja");
              }),
          _followinviteitem(
              icon: Icon(Icons.share),
              name: 'Invite Friends by...',
              onTap: () {
                Share.share("I'm on Instagram as @Omar_Elsaid. Install the app to follow my photos and videos. https://www.instagram.com/invites/contact/?i=iogt5pyw4zco&utm_content=1tvo1ja");
              }),
        ],
      ),
    );
  }
}
