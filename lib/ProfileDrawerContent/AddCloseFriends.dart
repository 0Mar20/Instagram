import 'package:flutter/material.dart';

class AddCloseFriendScreen extends StatefulWidget {
  @override
  _AddCloseFriendScreenState createState() => _AddCloseFriendScreenState();
}

class _AddCloseFriendScreenState extends State<AddCloseFriendScreen> {

  Widget _buildTextFieldinfo() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Search",
          fillColor: Colors.white.withOpacity(.2),
          prefixIcon: Icon(Icons.search,),
          filled: true,
          hintStyle: TextStyle(color: Colors.black26, fontSize: 15),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: Colors.black26,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget _peopleCard({String url , String username , String name  , double size}){
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
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            height: 20,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Color.fromRGBO(1, 149 , 247, 1)
            ),
            child: Center(child: Text('Add' , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),)),
          ),
        ),
      ],
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
        title: Text(
          "Add Close Friends",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 70,
            color: Colors.grey.withOpacity(.1),
            child: Padding(
              padding: const EdgeInsets.only( left: 50,right: 70 , top: 20),
              child: Text("We don't send notifications when you edit your close friends list. How it works" , style: TextStyle(fontSize: 13 , color: Colors.black26),textAlign: TextAlign.center,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
                height: 50,
                child: _buildTextFieldinfo()),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10 , top:  30 , bottom: 15),
            child: Text(
              "Suggestions",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),

          Expanded(
            child: ListView(
              children: [
                _peopleCard(url: 'https://img.freepik.com/free-photo/friendly-smiling-middle-eastern-man-with-long-beard_176420-20447.jpg?size=664&ext=jpg&ga=GA1.2.226697372.1597949838' , username: 'Alio' , name:'Ali Salem' , size: 12 ,),
                _peopleCard(url: 'https://image.freepik.com/free-photo/picture-thoughtful-tattooed-male-enterpreneur-with-thick-beard-trendy-hairstyle-begins-work-during-morning_273609-8485.jpg' , username: 'Marko_Mousa' , name:'Marko Mousa' , size: 12, ),
                _peopleCard(url: 'https://image.freepik.com/free-photo/portrait-handsome-smiling-stylish-hipster-lumbersexual-businessman-model-man-dressed-jeans-jacket-clothes_158538-1732.jpg' , username: 'Ahmed_Samer23' , name:'Ahmed Samer' , size: 12,),
                _peopleCard(url: 'https://image.freepik.com/free-photo/portrait-handsome-smiling-stylish-young-man-model-dressed-red-checkered-shirt-fashion-man-posing_158538-4914.jpg' , username: 'MO_C7' , name:'Mohamed Ronaldo' , size: 12,),
                _peopleCard(url: 'https://image.freepik.com/free-photo/pretty-girl-with-long-hair-sunglasses-is-listening-music-through-headphones-terrace-she-wears-white-dress-with-bare-shoulders-red-lipstick-hat-she-is-dancing_197531-683.jpg' , username: 'SallyOfficial' , name:'Sally Slouh' , size: 12,),
                _peopleCard(url: 'https://image.freepik.com/free-photo/happy-man-standing-beach_107420-9863.jpg?1' , username: 'AhmedSamy23' , name:'Ahmed Samy' , size: 12,),
                _peopleCard(url: 'https://image.freepik.com/free-photo/closeup-portrait-pretty-girl-with-long-curly-hair-smiling_197531-587.jpg' , username: 'AliaAhmed' , name:'Alia' , size: 12,),
                _peopleCard(url: 'https://image.freepik.com/free-photo/young-lady-hijab-looking-sae-seaside_114579-3989.jpg' , username: 'Amira_ELgendy' , name:'mira' , size: 12, ),
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
            child: Container(
              height: 40,
              width: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Color.fromRGBO(1, 149 , 247, 1).withOpacity(.3)
              ),
              child: Center(child: Text('Create List' , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),)),
            ),
          ),
        ],
      ),
    );
  }
}
