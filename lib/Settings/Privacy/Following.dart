import 'package:flutter/material.dart';
class FollowingPrivacyTab extends StatefulWidget {
  @override
  _FollowingPrivacyTabState createState() => _FollowingPrivacyTabState();
}

class _FollowingPrivacyTabState extends State<FollowingPrivacyTab> {
  Widget _buildTextFieldinfo() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Search following...",
          fillColor: Colors.white.withOpacity(.2),
          prefixIcon: Icon(Icons.search,),
          filled: true,
          hintStyle: TextStyle(color: Colors.black26, fontSize: 15),
        ),
      ),
    );
  }

  Widget _friendcard(String imgurl) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white),
        image: DecorationImage(image: NetworkImage(imgurl), fit: BoxFit.cover),
      ),
    );
  }


  Widget _peopleCard({String url , String username , String name , String info , double size}){
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
        Row(
          children: [
            Container(
              height: 20,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.white,
                border: Border.all(color: Colors.black26),
              ),
              child: Center(child: Text('Following' , style: TextStyle(color: Colors.black ,),)),
            ),

            Padding(
              padding: const EdgeInsets.only( right: 15),
              child: Icon(Icons.more_vert , color: Colors.black, size: 15,),
            ),
          ],
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
                        border: Border.all(color: Colors.black),
                        image: DecorationImage(image: AssetImage('assets/images/contact.jpg'),

                        )
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Connect Contacts' , style: TextStyle(fontSize: 14),),
                    Text('Follow People you know', style: TextStyle(color: Colors.grey , fontSize: 12.5),)
                  ],
                ),
                SizedBox(width: 40,),
                Container(
                  height: 25,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Color.fromRGBO(1, 149 , 247, 1)
                  ),
                  child: Center(child: Text('Connect' , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15 ,right: 15),
                  child: Icon(Icons.clear , color: Colors.black38, size: 15,),
                )
              ],
            ),

            Container(
              height: 5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Colors.grey.withOpacity(.2)))),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 20),
              child: Text("Categories" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15.5),),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:0,left: 8),
                  child: Stack(
                    children: [
                      Container(
                        height: 60,
                        width: 80,
                      ),
                      Positioned(
                        left: 5,
                        child: _friendcard(
                            'https://image.freepik.com/free-photo/positive-male-customer-presenting-new-product_74855-3636.jpg'),
                      ),
                      Positioned(
                          left: 20,top: 10,
                          child: _friendcard(
                              'https://image.freepik.com/free-photo/cheerful-curly-business-girl-wearing-glasses_176420-206.jpg')),

                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Least Interacted with",style: TextStyle(fontSize: 14 , color: Colors.black),),
                    Text("Mo_C7 and 30 others", style: TextStyle(color: Colors.black26 , fontSize: 13,),),

                  ],
                ),
              ],
            ),


            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:0,left: 8),
                  child: Stack(
                    children: [
                      Container(
                        height: 60,
                        width: 80,
                      ),
                      Positioned(
                        left: 5,
                        child: _friendcard(
                            'https://image.freepik.com/free-photo/positive-male-customer-presenting-new-product_74855-3636.jpg'),
                      ),
                      Positioned(
                          left: 20,top: 10,
                          child: _friendcard(
                              'https://image.freepik.com/free-photo/portrait-happy-man-using-digital-tablet_107420-20998.jpg')),

                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Most Shown in Feed",style: TextStyle(fontSize: 14 , color: Colors.black),),
                    Text("Marko_Mousa and 49 others", style: TextStyle(color: Colors.black26 , fontSize: 13,),),

                  ],
                ),
              ],
            ),

            Container(
              height: 5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Colors.grey.withOpacity(.2)))),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10 , top: 20 , bottom: 20),
                  child: Text("Sorted by" , style: TextStyle( fontSize: 12),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5 , vertical: 20),
                  child: Text("Defult" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 13),),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 220),
                  child: Icon(Icons.pause_circle_outline, size: 20,),
                ),
              ],
            ),

            Row(
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
                              image: DecorationImage(image: NetworkImage("https://www.pngkit.com/png/full/83-837674_instagram-hashtags-not-working-instagram-hashtags.png"),
                                  fit: BoxFit.cover

                              )
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hashtags" , style: TextStyle(fontSize: 14 , color: Colors.black),),
                          Text( "#Fintnessvideo, #Football, #RealMadrid, #C.." , style: TextStyle(color: Colors.grey , fontSize: 13 ,),),

                        ],
                      ),
                    ],
                  ),]),


            _peopleCard(url: 'https://image.freepik.com/free-photo/happy-man-standing-beach_107420-9863.jpg?1' , username: 'AhmedSamy23' , name:'Ahmed Samy' , size: 12,),
            _peopleCard(url: 'https://image.freepik.com/free-photo/closeup-portrait-pretty-girl-with-long-curly-hair-smiling_197531-587.jpg' , username: 'AliaAhmed' , name:'Alia' , size: 12,),
            _peopleCard(url: 'https://image.freepik.com/free-photo/portrait-happy-man-using-digital-tablet_107420-20998.jpg' , username: 'JhonMark' , name:'JHon' , size: 12,),
            _peopleCard(url: 'https://image.freepik.com/free-photo/medium-shot-gorgeous-girl-with-hijab-smiling_23-2148645027.jpg' , username: 'HudaMohammed' , name:'Huda Mohammed' , size: 12,),
            _peopleCard(url: 'https://image.freepik.com/free-photo/handsome-businesman-summer-city_1157-18994.jpg' , username: 'HamzaAllam' , name:'Hamza3arabi' , size: 12, ),
            _peopleCard(url: 'https://image.freepik.com/free-photo/man-work_144627-41120.jpg' , username: 'OudiSadam' , name:'Oudisadam' , size: 12, ),
            _peopleCard(url: 'https://image.freepik.com/free-photo/handsome-man-outdoors-drinking-coffee-with-sunglasses-guy-with-beard-instagram-effect_1212-818.jpg' , username: 'TamerKoraym' , name:'Koraym' , size: 12,),




          ],
        ) );


  }
}