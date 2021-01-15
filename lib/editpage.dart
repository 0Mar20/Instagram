import 'package:flutter/material.dart';
class EditImageScreen extends StatefulWidget {
  final  imagefil;
  EditImageScreen({Key key, @required this.imagefil}) : super(key: key);
  @override
  _EditImageScreenState createState() => _EditImageScreenState();
}

class _EditImageScreenState extends State<EditImageScreen> {
  Widget _imagefilters(){
    return Column(
      children: [
        Text("Normal"),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage("url"), fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("url"), fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
