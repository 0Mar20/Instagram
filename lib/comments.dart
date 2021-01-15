import 'package:flutter/material.dart';

import 'DM.dart';

class Comments extends StatefulWidget {
  @override
  _CommentsState createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {

  List<String> _comments = [
    "Lovely",
    "Congrats",
    "Legend",
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
        title: Text(
          "Comments",
          style: TextStyle(
              color: Colors.black87
          ),
        ),
        actions: [
          InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DM()
                ));
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset("assets/images/dm.png"),
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: _buildCommentList(),
          ),
          TextField(
            onSubmitted: (String submitted){
              _addComment(submitted);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20.0),
              hintText: "Add a comment ..."
            ),
          )
        ],
      )
    );
  }

  void _addComment (String val) {
    setState(() {
      _comments.add(val);
    });
  }

  Widget _buildCommentList () {
    return ListView.builder(
      itemBuilder: (context, index){ // ignore: missing_return
        if(index < _comments.length){
          return _buildCommentItem(_comments[index]);
        }
      },
    );
  }

  Widget _buildCommentItem(String comment) {
    return ListTile(
      leading: Container(
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.black
        ),
      ),
      title: Text(comment),
    );
  }

}
