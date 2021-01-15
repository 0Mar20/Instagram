import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  Widget _buildTextField(String hint) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          fillColor: Colors.white,
          filled: true,
          hintStyle: TextStyle(color: Colors.black26, fontSize: 16),
        ),
      ),
    );
  }

  Widget _buildTextFieldinfo(String hint) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          fillColor: Colors.white,
          filled: true,
          hintStyle: TextStyle(color: Colors.black26, fontSize: 15),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        elevation: 1,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.clear,
              color: Colors.black,
            )),
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.check,
              color: Color.fromRGBO(57, 151, 240, 1),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/images/profileimg.jpg"),
                  )),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Center(
              child: Text(
                'Change Profile Photo',
                style:
                TextStyle(color: Color.fromRGBO(23, 142, 221, 1), fontSize: 15),
              )),
          _buildTextField('Name'),
          _buildTextField('Username'),
          _buildTextField('Website'),
          _buildTextField('Bio'),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 10),
            height: 40,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Color.fromRGBO(235, 235, 235, 1)),
                  bottom: BorderSide(color: Color.fromRGBO(235, 235, 235, 1)),
                )),
            child: Text(
              'Switch to Professional Account',
              style: TextStyle(
                  color: Color.fromRGBO(23, 142, 221, 1), fontSize: 17),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Text('Profile Information'),
          ),
          SizedBox(
            height: 13,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Text(
              'E-mail Address',
              style: TextStyle(color: Colors.black54),
            ),
          ),
          _buildTextFieldinfo('Enter your email address'),
          SizedBox(
            height: 13,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Text(
              'Phone number',
              style: TextStyle(color: Colors.black54),
            ),
          ),
          _buildTextFieldinfo('Enter your Phone number'),
          SizedBox(
            height: 13,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Text(
              'Gender',
              style: TextStyle(color: Colors.black54),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20 , right: 20),
            padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 10 ),
            height: 40,
            width: 150,
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black54),
                )),
            child: Text(
              'male',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(height: 20,)
        ],
      ),
    );
  }
}
