import 'package:flutter/material.dart';
import 'package:instagram/ProfileDrawerContent/AddCloseFriends.dart';

class CloseFriendsScreen extends StatefulWidget {
  @override
  _CloseFriendsScreenState createState() => _CloseFriendsScreenState();
}

class _CloseFriendsScreenState extends State<CloseFriendsScreen> {
  Widget _friendcard(String imgurl) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(25),
        border: Border(
          top: BorderSide(
              color: Color.fromRGBO(250, 250, 250, 1),
              width: 3
          ),
          bottom: BorderSide(
              color: Color.fromRGBO(250, 250, 250, 1),
              width: 3
          ),
          left: BorderSide(
              color: Color.fromRGBO(250, 250, 250, 1),
              width: 3
          ),
          right: BorderSide(
              color: Color.fromRGBO(250, 250, 250, 1),
              width: 3
          ),
        ),
        image: DecorationImage(image: NetworkImage(imgurl), fit: BoxFit.cover),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Close Friends",
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
                padding: const EdgeInsets.only(top: 100, left: 100),
                child: Stack(
                  children: [
                    Container(
                      height: 60,
                      width: 160,
                    ),
                    Positioned(
                      right: 5,
                      child: _friendcard(
                          'https://image.freepik.com/free-photo/positive-male-customer-presenting-new-product_74855-3636.jpg'),
                    ),
                    Positioned(
                        right: 45,
                        child: _friendcard(
                            'https://image.freepik.com/free-photo/cheerful-curly-business-girl-wearing-glasses_176420-206.jpg')),
                    Positioned(
                        right: 80,
                        child: _friendcard(
                            'https://image.freepik.com/free-photo/happy-man-with-arms-crossed_23-2148221706.jpg')),
                    Positioned(
                        right: 110,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(25),
                            border: Border(
                              top: BorderSide(
                                  color: Color.fromRGBO(250, 250, 250, 1),
                                  width: 3
                              ),
                              bottom: BorderSide(
                                  color: Color.fromRGBO(250, 250, 250, 1),
                                  width: 3
                              ),
                              left: BorderSide(
                                  color: Color.fromRGBO(250, 250, 250, 1),
                                  width: 3
                              ),
                              right: BorderSide(
                                  color: Color.fromRGBO(250, 250, 250, 1),
                                  width: 3
                              ),
                            ),
                            image: DecorationImage(
                                image: AssetImage('assets/images/star.png'),
                                fit: BoxFit.cover),
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
            child: Text(
              'Add to Your Close Friends List',
              style: TextStyle(color: Colors.black, fontSize: 23),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10 , right: 5 , left: 25),
            child: Text(
              'You may not always want to share with everyone who follows you. You can create a list of close friends and choose to share your story with only them. Learn how it works'
              , style: TextStyle( color: Colors.black45.withOpacity(0.3) , fontSize: 14 ), textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddCloseFriendScreen()));
                },
                child: Container(
                  height: 40,
                  width: 330,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Color.fromRGBO(1, 149 , 247, 1)
                  ),
                  child: Center(child: Text('Get Started' , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
