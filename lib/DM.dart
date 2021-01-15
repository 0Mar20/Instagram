import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/Chat.dart';
import 'search.dart';
import 'Model/chatModel.dart';

class DM extends StatefulWidget {
  @override
  _DMState createState() => _DMState();
}

class _DMState extends State<DM> {

  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black87,
            size: 30.0,
          ),
        ),
        title: Text(
          "Direct",
          style: TextStyle(
            color: Colors.black87
          ),
        ),
        actions: <Widget>[
          Container(
            width: 40.0,
            margin: EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/videocall.png"),
//                fit: BoxFit.cover,
              fit: BoxFit.fitWidth
              )
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: Icon(
              FontAwesomeIcons.edit,
              color: Colors.black87,
              size: 25.0,
            ),
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                onTap: (){
                  setState(() {
                    pressed = !pressed;
                  });

                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Search(title: "Search",)
                  ));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Icon(
                          Icons.search,
                          color: pressed ? Colors.black : Colors.grey,
                          size: 30.0,
                        ),
                      ),
                      Text(
                        "Search",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.0
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.all(15.0),
                child: Text(
                  "Messages",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              _Chat(0),
              _Chat(1),
              _Chat(2),
              Padding(
                padding:
                const EdgeInsets.all(15.0),
                child: Text(
                  "Suggestions",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              _Chat(3),
              _Chat(4),
              _Chat(5),
            ],
          ),
        ],
      )
    );
  }

  Widget _Chat ( int index ) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Chat(
            name: Chats[index].accname,
            profile: Chats[index].imgUrl,
            status: Chats[index].last
          )
        ));
      },
      child: Container(
        width: double.infinity,
        height: 90.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.0),
                      image: DecorationImage(
                        image: AssetImage(
                          Chats[index].imgUrl,
                        ),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        Chats[index].accname,
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        Chats[index].active == 1 ? "Active now" : Chats[index].active == 0 ? Chats[index].last : Chats[index].tag,
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                height: 30.0,
                width: 30.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/images/grey camera icon.png"
                    ),
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
