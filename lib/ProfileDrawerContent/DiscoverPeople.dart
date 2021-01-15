import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DiscoverPeopleScreen extends StatefulWidget {
  @override
  _DiscoverPeopleScreenState createState() => _DiscoverPeopleScreenState();
}

class _DiscoverPeopleScreenState extends State<DiscoverPeopleScreen> {
  Widget _connect(dynamic color , String url , String text , String text2){
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.transparent,
                border: Border(
                  top: BorderSide(
                      color: color,
                      width: 1
                  ),
                  bottom: BorderSide(
                      color: color,
                      width: 1
                  ),
                  left: BorderSide(
                      color: color,
                      width: 1
                  ),
                  right: BorderSide(
                      color: color,
                      width: 1
                  ),
                ),
                image: DecorationImage(image: AssetImage(url),

                )
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text , style: TextStyle(fontSize: 14),),
            Text(text2 , style: TextStyle(color: Colors.grey , fontSize: 12.5),)
          ],
        ),
        SizedBox(width: 80,),
        Container(
          height: 25,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Color.fromRGBO(1, 149 , 247, 1)
          ),
          child: Center(child: Text('Connect' , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),)),
        ),
      ],
    );
  }

  Widget _peopleCard({String url , String username , String name , String info , double size}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.transparent,
                image: DecorationImage(image: NetworkImage(url),
                    fit: BoxFit.cover

                )
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(username , style: TextStyle(fontSize: 14 , color: Colors.black),),
            Text( name , style: TextStyle(color: Colors.grey , fontSize: size , fontWeight: FontWeight.bold),),
            Text(info , style: TextStyle(color: Colors.grey , fontSize: 12),)
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Container(
            height: 20,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Color.fromRGBO(1, 149 , 247, 1)
            ),
            child: Center(child: Text('Follow' , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only( right: 15),
          child: Icon(Icons.clear , color: Colors.black38, size: 15,),
        )
      ],
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 253, 253, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        elevation: 0,
        //centerTitle: true ,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Discover People",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: ListView(
        children: [
          _connect(Colors.blue, 'assets/images/faceicon.png', 'Connect to Facebook', 'Follow your friends'),
          _connect(Colors.black, 'assets/images/contact.jpg', 'Connect Contacts', 'Follow People you know'),

          Container(
            height: 5,
            decoration:BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.black12
                    )
                )
            ) ,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10 , top: 20 , bottom: 15 ),
            child: Text('New Suggestions' , style: TextStyle(color: Colors.black , fontSize: 15),),
          ),

          _peopleCard(url: 'https://image.freepik.com/free-photo/handsome-young-businessman-shirt-eyeglasses_85574-6228.jpg' , username: 'ssedoz' , name:'' , size: 0 , info: 'New to Instagram'),

          Padding(
            padding: const EdgeInsets.only(left: 10 , top: 15 , bottom: 20 ),
            child: Text('All Suggestions' , style: TextStyle(color: Colors.black , fontSize: 15),),
          ),

          _peopleCard(url: 'https://img.freepik.com/free-photo/friendly-smiling-middle-eastern-man-with-long-beard_176420-20447.jpg?size=664&ext=jpg&ga=GA1.2.226697372.1597949838' , username: 'Alio' , name:'Ali Salem' , size: 12 , info: 'Followed by ahmed.'),
          _peopleCard(url: 'https://image.freepik.com/free-photo/picture-thoughtful-tattooed-male-enterpreneur-with-thick-beard-trendy-hairstyle-begins-work-during-morning_273609-8485.jpg' , username: 'Marko_Mousa' , name:'Marko Mousa' , size: 12, info: 'Suggested for you'),
          _peopleCard(url: 'https://image.freepik.com/free-photo/portrait-handsome-smiling-stylish-hipster-lumbersexual-businessman-model-man-dressed-jeans-jacket-clothes_158538-1732.jpg' , username: 'Ahmed_Samer23' , name:'Ahmed Samer' , size: 12, info: 'Followed by ramy..'),
          _peopleCard(url: 'https://image.freepik.com/free-photo/portrait-handsome-smiling-stylish-young-man-model-dressed-red-checkered-shirt-fashion-man-posing_158538-4914.jpg' , username: 'MO_C7' , name:'Mohamed Ronaldo' , size: 12, info: 'Followed by abdo..'),
          _peopleCard(url: 'https://image.freepik.com/free-photo/pretty-girl-with-long-hair-sunglasses-is-listening-music-through-headphones-terrace-she-wears-white-dress-with-bare-shoulders-red-lipstick-hat-she-is-dancing_197531-683.jpg' , username: 'SallyOfficial' , name:'Sally Slouh' , size: 12, info: 'Suggested for you'),
          _peopleCard(url: 'https://image.freepik.com/free-photo/happy-man-standing-beach_107420-9863.jpg?1' , username: 'AhmedSamy23' , name:'Ahmed Samy' , size: 12, info: 'Followed by ramy..'),
          _peopleCard(url: 'https://image.freepik.com/free-photo/closeup-portrait-pretty-girl-with-long-curly-hair-smiling_197531-587.jpg' , username: 'AliaAhmed' , name:'Alia' , size: 12, info: 'Suggested for you'),
          _peopleCard(url: 'https://image.freepik.com/free-photo/young-lady-hijab-looking-sae-seaside_114579-3989.jpg' , username: 'Amira_ELgendy' , name:'mira' , size: 12, info: 'Suggested for you'),
          _peopleCard(url: 'https://image.freepik.com/free-photo/portrait-happy-man-using-digital-tablet_107420-20998.jpg' , username: 'JhonMark' , name:'JHon' , size: 12, info: 'Followed by Markian'),
          _peopleCard(url: 'https://image.freepik.com/free-photo/medium-shot-gorgeous-girl-with-hijab-smiling_23-2148645027.jpg' , username: 'HudaMohammed' , name:'Huda Mohammed' , size: 12, info: 'Suggested for you'),
          _peopleCard(url: 'https://image.freepik.com/free-photo/handsome-businesman-summer-city_1157-18994.jpg' , username: 'HamzaAllam' , name:'Hamza3arabi' , size: 12, info: 'Followed by omar..'),
          _peopleCard(url: 'https://image.freepik.com/free-photo/man-work_144627-41120.jpg' , username: 'OudiSadam' , name:'Oudisadam' , size: 12, info: 'Followed by hazem..'),
          _peopleCard(url: 'https://image.freepik.com/free-photo/handsome-man-outdoors-drinking-coffee-with-sunglasses-guy-with-beard-instagram-effect_1212-818.jpg' , username: 'TamerKoraym' , name:'Koraym' , size: 12, info: 'Followed by Nagy..'),


        ],
      ),
    );
  }
}
