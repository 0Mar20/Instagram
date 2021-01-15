import 'package:flutter/material.dart';
class FollowersPrivacyTab extends StatefulWidget {
  @override
  _FollowersPrivacyTabState createState() => _FollowersPrivacyTabState();
}

class _FollowersPrivacyTabState extends State<FollowersPrivacyTab> {
  Widget _buildTextFieldinfo() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Search followers...",
          fillColor: Colors.white.withOpacity(.2),
          prefixIcon: Icon(Icons.search,),
          filled: true,
          hintStyle: TextStyle(color: Colors.black26, fontSize: 15),
        ),
      ),
    );
  }

  Widget _peopleCardfollow({String url , String username , String name  , double size}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black12),
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

              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            height: 20,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.white,
                border: Border.all(color:Colors.black12)
            ),
            child: Center(child: Text('Remove' , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize: 13),)),
          ),
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
      body: ListView(
        children: [
          _buildTextFieldinfo(),
          SizedBox(height: 20,),

          _peopleCardfollow(url: 'https://img.freepik.com/free-photo/friendly-smiling-middle-eastern-man-with-long-beard_176420-20447.jpg?size=664&ext=jpg&ga=GA1.2.226697372.1597949838' , username: 'Alio' , name:'Ali Salem' , size: 12 ,),
          _peopleCardfollow(url: 'https://image.freepik.com/free-photo/picture-thoughtful-tattooed-male-enterpreneur-with-thick-beard-trendy-hairstyle-begins-work-during-morning_273609-8485.jpg' , username: 'Marko_Mousa' , name:'Marko Mousa' , size: 12, ),
          _peopleCardfollow(url: 'https://image.freepik.com/free-photo/portrait-handsome-smiling-stylish-hipster-lumbersexual-businessman-model-man-dressed-jeans-jacket-clothes_158538-1732.jpg' , username: 'Ahmed_Samer23' , name:'Ahmed Samer' , size: 12,),
          _peopleCardfollow(url: 'https://image.freepik.com/free-photo/portrait-handsome-smiling-stylish-young-man-model-dressed-red-checkered-shirt-fashion-man-posing_158538-4914.jpg' , username: 'MO_C7' , name:'Mohamed Ronaldo' , size: 12,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 20),
            child: Text("Suggestions for you" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15.5),),
          ),

          _peopleCard(url: 'https://image.freepik.com/free-photo/happy-man-standing-beach_107420-9863.jpg?1' , username: 'AhmedSamy23' , name:'Ahmed Samy' , size: 12, info: 'Followed by ramy..'),
          _peopleCard(url: 'https://image.freepik.com/free-photo/closeup-portrait-pretty-girl-with-long-curly-hair-smiling_197531-587.jpg' , username: 'AliaAhmed' , name:'Alia' , size: 12, info: 'Suggested for you'),
          _peopleCard(url: 'https://image.freepik.com/free-photo/portrait-happy-man-using-digital-tablet_107420-20998.jpg' , username: 'JhonMark' , name:'JHon' , size: 12, info: 'Followed by Markian'),
          _peopleCard(url: 'https://image.freepik.com/free-photo/medium-shot-gorgeous-girl-with-hijab-smiling_23-2148645027.jpg' , username: 'HudaMohammed' , name:'Huda Mohammed' , size: 12, info: 'Suggested for you'),
          _peopleCard(url: 'https://image.freepik.com/free-photo/handsome-businesman-summer-city_1157-18994.jpg' , username: 'HamzaAllam' , name:'Hamza3arabi' , size: 12, info: 'Followed by omar..'),
          _peopleCard(url: 'https://image.freepik.com/free-photo/man-work_144627-41120.jpg' , username: 'OudiSadam' , name:'Oudisadam' , size: 12, info: 'Followed by hazem..'),
          _peopleCard(url: 'https://image.freepik.com/free-photo/handsome-man-outdoors-drinking-coffee-with-sunglasses-guy-with-beard-instagram-effect_1212-818.jpg' , username: 'TamerKoraym' , name:'Koraym' , size: 12, info: 'Followed by Nagy..'),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 20),
            child: Text("See All Suggestions" , style: TextStyle(color: Colors.blue[800]),),
          )

        ],
      ) ,
    );
  }
}

