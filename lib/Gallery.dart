import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'editpage.dart';

class CameraPage extends StatefulWidget {
  @override
  _CameraPageState createState() => _CameraPageState();

}




class _CameraPageState extends State<CameraPage> with SingleTickerProviderStateMixin {
  File _image;
  final picker = ImagePicker();

  Future getImage(ImageSource source) async {
    final pickedFile = await picker.getImage(source: source);
    setState(() {
      _image = File(pickedFile.path);
      print(_image);
    });
  }
  TabController _tabController ;
  @override

  void initState(){
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }
  int _currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        elevation: 1,
        leading: InkWell(
            onTap: () {
            },
            child: Icon(
              Icons.clear,
              color: Colors.black,
            )),
        title: Text(
          'Photo',
          style: TextStyle(color: Colors.black),
        ),

      ),

      body: TabBarView(
          controller: _tabController,
          children: [
            EditImageScreen(imagefil: _image),
            EditImageScreen(imagefil: _image),
            EditImageScreen(imagefil: _image),
          ]),
      bottomNavigationBar: TabBar(
          isScrollable: true,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          controller: _tabController,
          unselectedLabelColor: Colors.black45,
          labelStyle: TextStyle(fontSize: 16 ),
          labelColor: Colors.black,
          indicatorColor:
          Colors.black,
          labelPadding: EdgeInsets.symmetric(horizontal: 30),



          tabs: [
            InkWell(
              onTap: (){
                getImage(ImageSource.gallery);
              },
              child: Tab(
                text: 'GALLERY' ,
              ),
            ),
            InkWell(
              onTap: (){
                getImage(ImageSource.camera);
              },
              child: Tab(
                text: 'PHOTO',

              ),
            ),
            InkWell(
              onTap: (){
                getImage(ImageSource.camera);
              },
              child: Tab(
                text: 'VIDEO',
              ),
            )
          ]) ,
    );
  }
}
