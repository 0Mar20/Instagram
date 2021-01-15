import 'package:flutter/material.dart';
import 'package:instagram/ProfileDrawerContent/Highlight.dart';
import 'package:instagram/Settings/Privacy/ActivityStatus.dart';


class ArchivePageScreen extends StatefulWidget {
  @override
  _ArchivePageScreenState createState() => _ArchivePageScreenState();
}

class _ArchivePageScreenState extends State<ArchivePageScreen> {
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "Stories Archive",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black,
                ),
              ],
            ),
            IconButton(icon: Icon(Icons.more_vert, color: Colors.black,), onPressed: () {
              showDialog(context: context , builder: (context){
                return AlertDialog(
                  title: Center(child: Text('More Options')),
                  content: Container(
                    height: 100,
                    width: 100,
                    child: Column(
                      children: [
                        Container(
                          height: 5,
                          width: MediaQuery.of(context).size.width,
                          decoration:BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.grey.withOpacity(.2)
                                  )
                              )
                          ) ,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NewHighlightArchivePage()));
                            },
                            child: Center(child: Text('Create Highlight', style: TextStyle(fontSize: 17),))),

                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 5,
                          width: MediaQuery.of(context).size.width,
                          decoration:BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.grey.withOpacity(.2)
                                  )
                              )
                          ) ,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ActivityStatusPrivacyScreen()));
                            },
                            child: Center(child: Text('Settings' , style: TextStyle(fontSize: 17),))),

                      ],
                    ),
                  ),
                );
              });
            })
          ],
        ),
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
