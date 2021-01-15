import 'package:flutter/material.dart';
import 'SavedAll.dart';

class SavedPageScreen extends StatefulWidget {
  @override
  _SavedPageScreenState createState() => _SavedPageScreenState();
}

class _SavedPageScreenState extends State<SavedPageScreen> {
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
            Text(
              "Saved",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
              ),
            ),

            IconButton(icon: Icon(Icons.add , color: Colors.grey.withOpacity(0.5), size: 29,), onPressed: () {})
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AllSavedPostsDrawerScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Container( width: 150 ,
                        height: 150,
                        decoration: BoxDecoration(

                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(7)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5 , top: 5),
                        child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                image: DecorationImage(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Football_iu_1996.jpg/1200px-Football_iu_1996.jpg") , fit: BoxFit.cover))
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 75 , right: 5 , top: 5),
                        child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                image: DecorationImage(image: NetworkImage("https://a2.espncdn.com/combiner/i?img=%2Fphoto%2F2020%2F0319%2Fr681030_1296x729_16%2D9.jpg") , fit: BoxFit.cover))
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 75 , top: 75 , right: 5),
                        child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                image: DecorationImage(image: NetworkImage("https://images2.minutemediacdn.com/image/upload/c_crop,h_1126,w_2000,x_0,y_181/f_auto,q_auto,w_1100/v1554932288/shape/mentalfloss/12531-istock-637790866.jpg") , fit: BoxFit.cover))
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5 , top: 75),
                        child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage("https://icdn2.digitaltrends.com/image/digitaltrends/sony-playstation-4-pro-0011-510x510-c-ar1.jpg") , fit: BoxFit.cover))
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8 , ),
                child: Text('All Posts' , style: TextStyle(color: Colors.black),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
