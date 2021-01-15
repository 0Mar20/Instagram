import 'package:flutter/material.dart';
import 'Model/chatModel.dart';

class Search extends StatelessWidget {

  final String title;

  Search ({
    this.title
  });

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
        title: TextFormField(
          autofocus: true,
          decoration: InputDecoration(
            hintText: title,
            hintStyle: TextStyle(
              fontSize: 20.0,
              color: Colors.grey
            ),
            border: InputBorder.none
          ),
        )
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                "Suggested",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0
                ),
              ),
            ),
            _Chat(3),
            _Chat(4),
            _Chat(5),
            _Chat(3),
            _Chat(4),
            _Chat(5),
            _Chat(3),
            _Chat(4),
            _Chat(5),
          ],
        ),
      ),
    );
  }

  Widget _Chat ( int index ) {
    return InkWell(
      onTap: (){},
      child: Container(
        width: double.infinity,
        height: 90.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
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
                        Chats[index].active == 1 ? "Active now" : Chats[index].active == 0 ? "Active 1 day ago" : Chats[index].tag,
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}