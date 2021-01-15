import 'package:flutter/material.dart';
bottomSheetaddacc({BuildContext context}) {
  showModalBottomSheet(
      context: context,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      builder: (context) {
        return Container(
            height: MediaQuery.of(context).size.height / 4,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                )),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 12),
                child: Container(
                  width: 35,
                  height: 4,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),

              Text('Add Account' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black , fontSize: 16),),
              Padding(
                padding: const EdgeInsets.only(top: 12 , bottom: 13),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey.withOpacity(.25)),
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Center(
                  child: Text('Log Into Existing Account' , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text('Create New Account' , style: TextStyle(color: Colors.blue),),
              ),



            ]
            ));
      });
}
