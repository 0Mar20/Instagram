import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/Wishlist.dart';
import 'package:instagram/brandCollections.dart';
import 'package:instagram/editorsPicks.dart';
import 'package:instagram/guides.dart';
import 'package:instagram/search.dart';
import 'package:instagram/shopsDirectory.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List<Map<String, dynamic>> _shopData = [
    {
      'img': "assets/images/shop1.jpg",
      'logo': "assets/images/shoplogo1.jpg",
      'Name': "fcbarcelona",
      'type': "POST",
      'num': "3 PRODUCTS",
      'caption': "😍 Oh my 🐐",
    },
    {
      'img': "assets/images/shop2.jpg",
      'logo': "assets/images/shoplogo2.png",
      'Name': "adidasoriginals",
      'type': "COLLECTION",
      'num': "27 PRODUCTS",
      'caption': "Super🔥🔥🔥",
    },
    {
      'img': "assets/images/shop3.jpg",
      'logo': "assets/images/shoplogo3.png",
      'Name': "fcbayern",
      'type': "POST",
      'num': "1 PRODUCT",
      'caption': "🙌 WHAT. A. SEASON. 🏆🏆🏆",
    },
    {
      'img': "assets/images/shop4.jpg",
      'logo': "assets/images/shoplogo4.png",
      'Name': "adidasfootball",
      'type': "COLLECTION",
      'num': "53 PRODUCTS",
      'caption': "Tap to gain 𝐧𝐞𝐱𝐭 𝐥𝐞𝐯𝐞𝐥 𝐬𝐩𝐞𝐞𝐝 👀",
    },
  ];

  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black54,
            size: 35.0,
          ),
        ),
        title: Text(
          "Instagram Shop",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              bottomSheet(context: context);
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black54,
              size: 35.0,
            ),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          InkWell(
            onTap: (){
              setState(() {
                pressed = !pressed;
              });

              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Search(title: "Search IGTV creators",)
              ));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
              width: double.infinity,
              height: 40.0,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.0,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Icon(
                      Icons.search,
                      color: pressed ? Colors.black : Colors.grey,
                      size: 30.0,
                    ),
                  ),
                  Text(
                    "Search Shops",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0
                    ),
                  )
                ],
              ),
            ),
          ),
          _FirstListview(
            _shopData[0]['img'],
            _shopData[0]['logo'],
            _shopData[0]['Name'],
            _shopData[0]['type'],
            _shopData[0]['num'],
            _shopData[0]['caption'],
          ),
          _FirstListview(
            _shopData[1]['img'],
            _shopData[1]['logo'],
            _shopData[1]['Name'],
            _shopData[1]['type'],
            _shopData[1]['num'],
            _shopData[1]['caption'],
          ),
          _FirstListview(
            _shopData[2]['img'],
            _shopData[2]['logo'],
            _shopData[2]['Name'],
            _shopData[2]['type'],
            _shopData[2]['num'],
            _shopData[2]['caption'],
          ),
          _FirstListview(
            _shopData[3]['img'],
            _shopData[3]['logo'],
            _shopData[3]['Name'],
            _shopData[3]['type'],
            _shopData[3]['num'],
            _shopData[3]['caption'],
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Shops Directory",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "See All",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Row(
              children: <Widget>[
                _HorizontalRow(
                  _shopData[0]['logo'],
                  _shopData[0]['Name'],
                ),
                _HorizontalRow(
                  _shopData[1]['logo'],
                  _shopData[1]['Name'],
                ),
                _HorizontalRow(
                  _shopData[2]['logo'],
                  _shopData[2]['Name'],
                ),
                _HorizontalRow(
                  _shopData[3]['logo'],
                  _shopData[3]['Name'],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Text(
              "Products for You",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            height: 500.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: GridView.builder(
                itemCount: 30,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.4),
                ),
                itemBuilder: (context, index){
                  return _GridView();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _FirstListview(String image, String logo, String name, String type,
      String num, String caption) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 1.7,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(30.0)),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 1.7,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(30.0)),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding:
              const EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage(
                              logo,
                            ),
                            fit: BoxFit.cover)),
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1.0),
                      child: Text(
                        "-",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Text(
                    "Follow",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding:
              const EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
              child: Container(
                width: 90.0,
                height: 30.0,
                decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    type,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10.0,
            left: 10.0,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    num,
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    caption,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _HorizontalRow(String image, String title) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45.0),
                image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          )
        ],
      ),
    );
  }

  Widget _GridView() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: (MediaQuery.of(context).size.height / 4.3),
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15.0)
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/product.jpg"
                          ),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/shoplogo2.png"
                                ),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "adidasoriginals",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Addidas shirt",
                      style: TextStyle(
                          fontSize: 16.0
                      ),
                    ),
                    Text(
                      "Liverpool fc",
                      style: TextStyle(
                          fontSize: 16.0
                      ),
                    ),
                    Text(
                      "\$40",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.bookmark_border,
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

bottomSheet({BuildContext context}) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          )
      ),
      context: context,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height/1.9,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Your Account",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => Wishlist()
                    ));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    width: double.infinity,
                    height: 50.0,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.bookmark_border,
                          size: 35.0,
                        ),
                        Text(
                          "Wishlist",
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 10.0,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Instagram Shop",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => ShopsDirectory()
                    ));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    child: Text(
                      "Shops Directory",
                      style: TextStyle(
                          fontSize: 18.0
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => EditorsPicks()
                    ));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    child: Text(
                      "Editors' Picks",
                      style: TextStyle(
                          fontSize: 18.0
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => BrandCollections()
                    ));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    child: Text(
                      "Brand Collection",
                      style: TextStyle(
                          fontSize: 18.0
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => Guides()
                    ));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    child: Text(
                      "Guides",
                      style: TextStyle(
                          fontSize: 18.0
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
