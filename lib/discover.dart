//import 'package:flutter/cupertino.dart';
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:koyum/kayit.dart';

void main() {
  runApp(Discover());
}

class Discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromRGBO(242, 239, 234, 1),
            bottomNavigationBar: Container(
              height: 60,
              //color: Colors.black12,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(Icons.person,
                        size: 30, color: Color.fromARGB(255, 229, 117, 12)),
                    Icon(Icons.home,
                        size: 30, color: Color.fromARGB(255, 229, 117, 12)),
                    Icon(Icons.settings,
                        size: 30, color: Color.fromARGB(255, 229, 117, 12)),
                    Icon(Icons.message,
                        size: 30, color: Color.fromARGB(255, 229, 117, 12))
                  ],
                ),
              ),
            ),
            body: SingleChildScrollView(
                child: Wrap(direction: Axis.horizontal, children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 50, bottom: 70),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/koyum.png'))),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, bottom: 28),
                  child: Text('Uzman Çiftçileri Keşfet',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: Color.fromARGB(255, 4, 46, 5))),
                ),
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 30.0, left: 30),
                                child: ClipOval(
                                  child: Container(
                                    /*  margin: EdgeInsets.only(
                                        left: 20, right: 0, top: 50, bottom: 0), */
                                    width: 85,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          )
                                        ],
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/ahmet.jpg'),
                                            fit: BoxFit.cover),
                                        //color: Color.fromARGB(255, 221, 73, 14),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                        )),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 40.0),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 255, 92, 11),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        //Navigator.push(context, MaterialPageRoute(builder:(context) => login()));
                                      },
                                      child: const Text('İlanlar',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'Quicksand',
                                              decoration:
                                                  TextDecoration.underline),
                                          textAlign: TextAlign.start),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 30.0),
                                      child: TextButton(
                                        onPressed: () {
                                          //Navigator.push(context, MaterialPageRoute(builder:(context) => login()));
                                        },
                                        child: const Text('Yorumları Gör',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontFamily: 'Quicksand',
                                                decoration:
                                                    TextDecoration.underline),
                                            textAlign: TextAlign.start),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(
                                    right: 2.0,
                                    top: 20,
                                  ),
                                  child: Container(
                                    //color: Colors.white,
                                    padding: EdgeInsets.only(
                                      left: 15,
                                      right: 10,
                                      top: 5,
                                    ),
                                    width: 250,
                                    height: 50,

                                    child: Text(
                                      'Merhaba, ben çiftçi Ahmet. Mersinde tarlam var.',
                                      style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                      softWrap: true,
                                      textAlign: TextAlign.left,
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color.fromARGB(
                                                255, 249, 76, 42),
                                            width: 0.2),

                                        // color: Colors.white70,
                                        /*  boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          )
                                        ], */
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          topLeft: Radius.circular(10),
                                        )),
                                  )),
                            ],
                          )
                        ],
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Text(
                            'Ahmet Yılmaz, Mersin',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                        width: 250,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          color: Color.fromARGB(255, 221, 73, 14),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 200.0, left: 3),
                        child: Container(
                          // alignment: Alignment.bottomLeft,
                          width: 180,
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 221, 73, 14)),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder:(context) => kayit()));
                            },
                            child: const Text('Ekosisteme Katıl',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.start),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ]))));
  }
}
