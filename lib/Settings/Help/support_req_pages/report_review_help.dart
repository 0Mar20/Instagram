import 'package:flutter/material.dart';
class ReviewReportSupportPage extends StatefulWidget {
  @override
  _ReviewReportSupportPageState createState() => _ReviewReportSupportPageState();
}

class _ReviewReportSupportPageState extends State<ReviewReportSupportPage> {
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
          "Report",
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
            height: 50,
            color: Color.fromRGBO(89, 195, 35, 1),
            child: Center(
              child: Text("Reviewed" , style: TextStyle(color: Colors.white),),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10 , top: 10),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.black26),
                      image: DecorationImage(image: NetworkImage("https://t4.ftcdn.net/jpg/00/84/67/19/240_F_84671939_jxymoYZO8Oeacc3JRBDE8bSXBWj0ZfA9.jpg"))
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10 , top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 250,
                        child: Text("You anonymously reported yasminesabry for hate speech or symbols." , style: TextStyle(fontSize: 13),)),
                    Text("June 8" , style: TextStyle(color: Colors.black26 , fontSize: 13),)
                  ],
                ),
              ),


            ],
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10 , top: 30),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.black26),
                      image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQec_B6sncBtjY9fGpiHPseixgkLoJDosLVmQ&usqp=CAU"))
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10 , top: 20),
                child: Text("We didn't remove yasminesabry's account" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 13.5),),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 70 , top: 0),
            child: Container(
                width: 235,
                child: Padding(
                  padding: const EdgeInsets.only(right:0),
                  child: Text("We found that this account likely doesn't go against our Community Guidelines.    if you think we made a mistake, please report it again." , style: TextStyle(fontSize: 13),),
                )),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 70 , top: 15),
            child: Container(
                width: 235,
                child: Padding(
                  padding: const EdgeInsets.only(right:0),
                  child: Text("Because Instagram is a global community, we understand that people may express themselves differently. We'll use your feedback to make this experience better for everyone." , style: TextStyle(fontSize: 13),),
                )),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 70 , top: 15),
            child: Container(
                width: 225,
                child: Padding(
                  padding: const EdgeInsets.only(right:0),
                  child: Text("If you don't want to see yasminsabry on Instagram, you can unfollow, mute or block them to hide their posts and comments from your feed." , style: TextStyle(fontSize: 13),),
                )),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 72 , bottom: 50),
            child: Text("June 8" , style: TextStyle(color: Colors.black26 , fontSize: 13),),
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
            padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(1, 149, 247, 1),
                  borderRadius: BorderRadius.circular(4)
              ),
              child: Center(
                child: Text("More Options" , style: TextStyle(color: Colors.white),),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
