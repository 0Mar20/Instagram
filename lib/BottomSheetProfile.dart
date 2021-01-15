import 'package:flutter/material.dart';

Widget _botsheetitem({ dynamic icon , String name , BuildContext context}){
  return Padding(
    padding: const EdgeInsets.only(left: 10 , bottom: 10 , right: 5),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Icon(icon),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
            height: 30,
            width: MediaQuery.of(context).size.width-50,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.withOpacity(.25)),
              ),
            ),
            child: Padding(
              //padding: const EdgeInsets.symmetric(vertical: 5 , horizontal: 5),
              padding: const EdgeInsets.only(left: 5 , bottom: 10),
              child: Text(name , style: TextStyle(color: Colors.black , fontSize: 15),),
            )),

      ],
    ),
  );

}
bottomSheet({BuildContext context}) {
  showModalBottomSheet(
      context: context,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              )),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10 , bottom: 15),
                child: Container(
                  width: 35,
                  height: 4,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(20)

                  ),
                ),
              ),

              Text('Create New' , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize: 16),),
              Padding(
                padding: const EdgeInsets.only(top: 10 , bottom: 13),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey.withOpacity(.25)),
                    ),
                  ),
                ),
              ),

              _botsheetitem(icon: Icons.apps , name: 'Feed Post' , context: context),
              _botsheetitem(icon: Icons.blur_circular , name: 'Story' , context: context),
              _botsheetitem(icon: Icons.face , name: 'Story Highlight', context: context),
              _botsheetitem(icon: Icons.live_tv , name: 'IGTV Video' , context: context),
              _botsheetitem(icon: Icons.ondemand_video , name: 'Reel' , context: context),


            ],
          ),
        );
      });
}
