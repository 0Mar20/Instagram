import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram/ProfileDrawerContent/QRcode.dart';
import 'package:instagram/Search/IGTV.dart';
import 'package:instagram/Search/Shop.dart';
import 'package:instagram/Search/Travel.dart';

class MainSearchScreen extends StatefulWidget {
  @override
  _MainSearchScreenState createState() => _MainSearchScreenState();
}
class _MainSearchScreenState extends State<MainSearchScreen> {
  List<String> catData = [
    'IGTV',
    'Shop',
    'Travel',
    'Architecture',
    'Decor',
    'Art',
    'Food',
    'Style',
    'TV & Movies',
    'DIY',
    'Humor',
    'Music',
    'Beauty'
  ];
  Widget _catCards(String title, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 45.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: .5,
            color: Colors.black.withOpacity(.4),
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
          ),
        ),
      ),
    );
  }

  Widget _catCards2(IconData iconData, String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 45.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: .5,
            color: Colors.black.withOpacity(.4),
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(
                  iconData,
                  size: 20,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _gridItem(int i) {
    return Image.asset(
      'assets/images/$i.jpg',
      fit: BoxFit.fill,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        title: SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              color: Colors.white,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Color(0xfff8f9fc),
                  // alignLabelWithHint: false,
                  filled: true,
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    fontSize: 23.0,
                    color: Colors.black.withOpacity(.4),
                  ),
                ),
              ),
            ),
          ),
        ),
        leading: Icon(
          Icons.search,
          color: Colors.black,
          size: 30.0,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => QrPageScreen()
                ));
              },
              child: Container(
                width: 50.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/qr.png'
                        ),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 50.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: catData.length,
                    itemBuilder: (context, index) {
                      if(index == 0){
                        return InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => IGTV()
                              ));
                            },
                            child: _catCards2(Icons.live_tv, catData[index])
                        );
                      } else if (index == 1){
                        return InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Shop()
                              ));
                            },
                            child: _catCards2(Icons.shopping_bag, catData[index]));
                      } else {
                        return InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Travel(
                                  appbarTitle: catData[index],
                                )
                            ));
                          },
                          child: _catCards(
                              catData[index],
                              index
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 5,),
            ),
            SliverStaggeredGrid.count(
              crossAxisCount: 3,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              children: List.generate(18, (int i) {
                return _gridItem(i);
              }),
              staggeredTiles: List.generate(
                (18),
                    (int index) {
                  int remain = index % 18;
                  if (remain == 1 || remain == 9) {
                    return StaggeredTile.count(2, 2);
                  }
                  return StaggeredTile.count(1, 1);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
