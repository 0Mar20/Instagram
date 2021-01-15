import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class Travel extends StatefulWidget {

  final String appbarTitle;

  Travel({
    this.appbarTitle
  });

  @override
  _TravelState createState() => _TravelState();
}

class _TravelState extends State<Travel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Color(0xfff8f9fc),
        centerTitle: false,
        title: Text(
          widget.appbarTitle,
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
        padding: const EdgeInsets.only(top:8.0),
        child: CustomScrollView(
          slivers: [
            SliverStaggeredGrid.count(
              crossAxisCount: 3,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              children: List.generate(18, (int i) {
                return _gridItem(i);
              }
              ),
              staggeredTiles: List.generate((18), (int index) {
                int remain = index % 18;
                if(remain == 1 || remain == 9){
                  return StaggeredTile.count(2, 2);
                }
                return StaggeredTile.count(1, 1);
              },
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _gridItem(int i){
    return Image.asset('assets/images/$i.jpg',fit: BoxFit.fill,);
  }
}
