import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff9fbfc),
        centerTitle: false,
        title: Text(
          'Password',
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
        actions: [
          Icon(
            Icons.check,
            color: Colors.lightBlueAccent,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextForm(
                hintText: 'Current Password',
              ),
              CustomTextForm(
                hintText: 'New Password,',
              ),
              CustomTextForm(
                hintText: 'New Password, again',
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: RichText(
                  text: TextSpan(
                      text: 'If you forgot your password, you can ',
                      style: TextStyle(
                        color: Colors.grey.withOpacity(.8),
                        fontSize: 18,
                      ),
                      children: [
                        TextSpan(
                            text: 'reset it with Facebook',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0f3057),
                            )
                        ),
                      ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextForm extends StatelessWidget {
  CustomTextForm({@required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
      child: Container(
        child: TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: .1,
              ),
            ),
            filled: true,
            fillColor: Colors.grey.withOpacity(.1),
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey.withOpacity(.8),
            ),
          ),
        ),
      ),
    );
  }
}

