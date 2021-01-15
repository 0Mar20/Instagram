import 'package:flutter/material.dart';

class Wishlist extends StatefulWidget {
  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
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
          "Wishlist",
          style: TextStyle(
              color: Colors.black87
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60.0),
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0
                  )
                ),
                child: Center(
                  child: Icon(
                    Icons.bookmark_border,
                    color: Colors.black,
                    size: 80.0,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Add to Your Wishlist",
                style: TextStyle(
                  fontSize: 25.0
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Save items you want to see again. Only you can see the items in your Wishlist.",
                style: TextStyle(
                    fontSize: 16.0,
                  color: Colors.grey
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
