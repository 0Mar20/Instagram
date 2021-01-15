import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
const kNameTextStyle = TextStyle(
  fontSize: 18,
  color: Colors.white70,
);
const kCaptionTextStyle =TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 20,
);
class IGTV extends StatefulWidget {
  @override
  _IGTVState createState() => _IGTVState();
}
class _IGTVState extends State<IGTV> {
  // ignore: non_constant_identifier_names
  List<Map<String, dynamic>> fake_data =[
    {'name': 'SkySports' , 'caption': 'Salah scores a Hat-Trick in the openning match', 'views' :'20k views','image':'assets/images/salah.jpg'},
    {'name': 'BeINSports' , 'caption': 'Reports that Cavani is about to move to Atletico', 'views' :'40k views','image':'assets/images/cavani.jpg'},
    {'name': 'RotanaCinema' , 'caption': 'Amir Krara prepares for his next role', 'views' :'30k views','image':'assets/images/amir.jpg'},
    {'name': 'Fifa21' , 'caption': 'How is that even possible?', 'views' :'35k views','image':'assets/images/fifa.jpg'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8f9fc),
      appBar: AppBar(
        backgroundColor: Color(0xfff8f9fc),
        centerTitle: false,
        title: Text(
          ''
              'IGTV',
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
        actions: [
          Icon(
            Icons.add,
            size: 28,
            color: Colors.black,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:10.0,right: 10),
        child: GridView.builder(
            itemCount: 12,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 6,
              crossAxisSpacing: 6,
              crossAxisCount: 2,
              childAspectRatio: .6,
            ),
            itemBuilder: (context, index) {
              index > 3 && index < 8 ? index = index - 4 : index > 7 && index < 12 ? index = index -8 : index = index ;
              return IGTV_Cards(
                color: Colors.grey,
                name: fake_data[index]['name'],
                caption: fake_data[index]['caption'],
                views: fake_data[index]['views'],
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(fake_data[index]['image'],)
                ),
              );
            } ),
      ),
    );
  }
}

// ignore: camel_case_types
class IGTV_Cards extends StatelessWidget {
  IGTV_Cards({ this.color, this.name ,this.caption,this.views,this.image});
  final Color color;
  final String name;
  final String caption;
  final String views;
  final DecorationImage image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: image,
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(.3),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Text(
                    name,
                    style: kNameTextStyle
                ),
              ),
              SizedBox(height: 4),
              Container(
                child: Text(
                  caption,
                  style: kCaptionTextStyle,
                ),
              ),
              SizedBox(height: 6),
              Container(
                child: Text(
                  views,
                  style: kNameTextStyle.copyWith(
                      color: Colors.white70.withOpacity(.85)
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
