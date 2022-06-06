//import 'package:flutter/cupertino.dart';
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(consumer());
}

class consumer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'köyüm',
        home: Scaffold(
            bottomNavigationBar: Container(
              height: 60,
              //color: Colors.black12,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
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
              child: Container(
                color: Color.fromRGBO(242, 239, 234, 1),
                child: Wrap(
                  direction: Axis.horizontal,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 60, bottom: 70),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/koyum.png'))),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(top: 10, bottom: 25, left: 50),
                      child: Text('Hoş Geldin İpek!',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Color.fromARGB(255, 4, 46, 5))),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 5, top: 0, bottom: 10),
                        width: 300,
                        height: 180,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                bottom: 0,
                                top: 125,
                              ),
                              padding: EdgeInsets.only(
                                  left: 10, bottom: 10, top: 15),
                              width: 300,
                              height: 55,
                              child: Text(
                                'Ekosistemi Keşfet',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontFamily: 'Quicksand'),
                              ),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  )
                                ],
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                color: Color.fromARGB(255, 221, 73, 14),
                              ),
                            ),
                          ],
                        ),
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
                                image: AssetImage('assets/images/makine.jpg'),
                                fit: BoxFit.cover),
                            color: Color.fromARGB(255, 221, 73, 14),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 5, top: 20, bottom: 20),
                        width: 300,
                        height: 180,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                bottom: 0,
                                top: 125,
                              ),
                              padding: EdgeInsets.only(
                                  left: 10, bottom: 10, top: 15),
                              width: 300,
                              height: 55,
                              child: Text(
                                'Çiftçimin Profili',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontFamily: 'Quicksand'),
                              ),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  )
                                ],
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                color: Color.fromARGB(255, 221, 73, 14),
                              ),
                            ),
                          ],
                        ),
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
                                image: AssetImage('assets/images/ciftci.jpg'),
                                fit: BoxFit.cover),
                            color: Color.fromARGB(255, 221, 73, 14),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 5, top: 15, bottom: 40),
                        width: 300,
                        height: 180,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                bottom: 0,
                                top: 125,
                              ),
                              padding: EdgeInsets.only(
                                  left: 10, bottom: 10, top: 15),
                              width: 300,
                              height: 55,
                              child: Text(
                                'Profilini Oluştur',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontFamily: 'Quicksand'),
                              ),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  )
                                ],
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                color: Color.fromARGB(255, 221, 73, 14),
                              ),
                            ),
                          ],
                        ),
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
                                image: AssetImage('assets/images/portakal.jpg'),
                                fit: BoxFit.cover),
                            color: Color.fromARGB(255, 221, 73, 14),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
