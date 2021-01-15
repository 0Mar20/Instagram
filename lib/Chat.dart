import 'package:flutter/material.dart';
import 'Model/chatModel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Chat extends StatefulWidget {

  final String name;
  final String status;
  final String  profile;

  Chat({
    this.name,
    this.status,
    this.profile
});

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {

  List<String> _messages = [
    "Hi",
    "Legend!",
  ];

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
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage(
                      widget.profile
                    ),
                    fit: BoxFit.cover
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 16.0
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        widget.status,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          color: Colors.grey
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        actions: [
          Container(
            width: 40.0,
            margin: EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/videocall.png"),
                )
            ),
          ),
          Container(
            width: 40.0,
            margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                width: 3.0,
                color: Colors.black
              )
            ),
            child: Center(
              child: Icon(
                FontAwesomeIcons.info,
                color: Colors.black,
                size: 15.0,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: _buildMessagesList(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(
                        width: 1.0,
                        color: Colors.grey.withOpacity(0.5)
                      )
                    ),
                    child: TextField(
                      onSubmitted: (String submitted){
                        _sendMessage(submitted);
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: Colors.blueAccent
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              ),
                            ),
                          ),
                        
                        contentPadding: EdgeInsets.all(20.0),
                        hintText: "Message ..."
                      ),
                    ),
                  )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _sendMessage (String val) {
    setState(() {
      _messages.add(val);
    });
  }

  Widget _buildMessagesList () {
    return ListView.builder(
      reverse: true,
      itemBuilder: (context, index){ // ignore: missing_return
        if(index < _messages.length){
          return _buildMessageItem(_messages[index]);
        }
      },
    );
  }

  Widget _buildMessageItem(String message) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        width: 70.0,
        height: 40.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.grey.withOpacity(0.3)
        ),
        child: Center(
          child: Text(
              message,
          ),
        ),
      ),
    );
  }

}


//TextField(
//onSubmitted: (String submitted){
//_sendMessage(submitted);
//},
//decoration: InputDecoration(
//prefixIcon: Padding(
//padding: const EdgeInsets.all(8.0),
//child: Container(
//width: 50.0,
//height: 50.0,
//decoration: BoxDecoration(
//borderRadius: BorderRadius.circular(25.0),
//color: Colors.blueAccent
//),
//child: Center(
//child: Icon(
//Icons.camera_alt,
//color: Colors.white,
//size: 30.0,
//),
//),
//),
//),
//suffixIcon: Row(
//mainAxisAlignment: MainAxisAlignment.end,
//children: [
//Padding(
//padding: const EdgeInsets.all(8.0),
//child: Icon(
//Icons.mic_none,
//color: Colors.black,
//size: 30.0,
//),
//),
//Padding(
//padding: const EdgeInsets.all(8.0),
//child: Icon(
//Icons.photo_album_outlined,
//color: Colors.black,
//size: 30.0,
//),
//),
//Padding(
//padding: const EdgeInsets.all(8.0),
//child: Icon(
//Icons.emoji_emotions_outlined,
//color: Colors.black,
//size: 30.0,
//),
//),
//],
//),
//contentPadding: EdgeInsets.all(10.0),
//hintText: "Message ...",
//hintStyle: TextStyle(
//color: Colors.grey
//),
//border: OutlineInputBorder(
//borderSide: BorderSide(
//color: Colors.grey
//),
//borderRadius: BorderRadius.circular(30.0)
//)
//),
//),