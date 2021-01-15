import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/Wishlist.dart';

class ShopsDirectory extends StatefulWidget {
  @override
  _ShopsDirectoryState createState() => _ShopsDirectoryState();
}

class _ShopsDirectoryState extends State<ShopsDirectory> {

  List<Map<String, dynamic>> _data = [
    {
      'profile': 'assets/images/SDpro1.jpg',
      'name': "addidaashoops",
      'followers': "2.8M followers",
      'prod': 'assets/images/SDprod2.jpg'
    },
    {
      'profile': 'assets/images/SDpro2.jpg',
      'name': "fashionnovamen",
      'followers': "1.3M followers",
      'prod': 'assets/images/SDprod3.jpg'
    },
    {
      'profile': 'assets/images/SDpro3.jpg',
      'name': "fcbarcelona",
      'followers': "8.2M followers",
      'prod': 'assets/images/SDprod4.png'
    },
    {
      'profile': 'assets/images/SDpro4.jpg',
      'name': "rouge",
      'followers': "1.1M followers",
      'prod': 'assets/images/SDprod5.webp'
    },
    {
      'profile': 'assets/images/SDpro5.jpg',
      'name': "olympiquedemarsielle",
      'followers': "3.7M followers",
      'prod': 'assets/images/SDprod1.webp'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black87,
            size: 30.0,
          ),
        ),
        title: Text(
          "Shops Directory",
          style: TextStyle(
              color: Colors.black87
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.bookmark_border,
                color: Colors.black,
              ),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Wishlist()
                ));
              },
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.0, top: 10.0),
            width: double.infinity,
            height: 40.0,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Shops You Follow",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            width: double.infinity,
            height: 40.0,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Shops for You",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: _data.length,
                shrinkWrap: true,
                itemBuilder: (context, index){
                  return SDListView(
                    profile: _data[index]['profile'],
                    name: _data[index]['name'],
                    followers: _data[index]['followers'],
                    prod: _data[index]['prod'],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget SDListView ({String profile, String name, String followers, String prod}) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: double.infinity,
      height: 200.0,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 60.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          image: DecorationImage(
                              image: AssetImage(
                                  profile
                              ),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0
                          ),
                        ),
                        Text(
                          followers,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  width: 70.0,
                  child: Center(
                    child: Text(
                      "View Shop",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                prod
                            ),
                            fit: BoxFit.cover
                        ),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5),
                            width: 1.0
                        )
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                prod
                            ),
                            fit: BoxFit.cover
                        ),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5),
                            width: 1.0
                        )
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                prod
                            ),
                            fit: BoxFit.cover
                        ),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5),
                            width: 1.0
                        )
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}
