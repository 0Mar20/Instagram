import 'package:flutter/material.dart';

import 'BottomSheetAddAccount.dart';

bottomSheetarrow({BuildContext context}) {
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
                padding: const EdgeInsets.only(top: 10, bottom: 15),
                child: Container(
                  width: 35,
                  height: 4,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/profileimg.jpg"
                            )
                          ),
                          border: Border.all(color: Colors.black26)
                      ),
                    ),
                  ),
                  Text(
                    "Omar_Elsaid",
                    style: TextStyle(color: Colors.black),

                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 180),
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Container(
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          border: Border.all(color: Colors.black26)
                      ),
                      child: Center(
                        child: InkWell(
                            onTap: (){
                              bottomSheetaddacc(context: context);
                            },
                            child: Icon(Icons.add , color: Colors.black, size: 35,)),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      bottomSheetaddacc(context: context);
                    },
                    child: Text(
                      "Add Account",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ]));
      });
}
