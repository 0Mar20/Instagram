import 'package:flutter/material.dart';
class AppsAndWebsites extends StatefulWidget {
  @override
  _AppsAndWebsitesState createState() => _AppsAndWebsitesState();
}

class _AppsAndWebsitesState extends State<AppsAndWebsites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Color(0xfff9fbfc),
        centerTitle: false,
        title: Text(
          'Apps and Websites',
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RowData(
              data: 'Active',
            ),
            RowData(
              data: 'Expired',
            ),
            RowData(
              data: 'Removed',
            ),
          ],
        ),
      ),
    );
  }
}

class RowData extends StatelessWidget {
  RowData({@required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:35.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              data,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    '0',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey.withOpacity(.8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
