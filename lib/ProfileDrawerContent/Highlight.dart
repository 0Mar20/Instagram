import 'package:flutter/material.dart';


class NewHighlightArchivePage extends StatefulWidget {
  @override
  _NewHighlightArchivePageState createState() => _NewHighlightArchivePageState();
}

class _NewHighlightArchivePageState extends State<NewHighlightArchivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1),
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
          "New Highlight",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Next",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black, width: 3),
                  bottom: BorderSide(color: Colors.black, width: 3),
                  left: BorderSide(color: Colors.black, width: 3),
                  right: BorderSide(color: Colors.black, width: 3),
                ),
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    image: AssetImage('assets/images/archive.png'), scale: 0.3),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Add To Your Story',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
              "keep your stories in your archive after they disappear, so you can look back on your memories. Only you can see what's in your archive.",
              style: TextStyle(
                fontSize: 17,
              ),
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

