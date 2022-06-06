//import 'package:flutter/cupertino.dart';
// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';


void main() {
  runApp(Profile());
}

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromRGBO(242, 239, 234, 1),
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
                child: Wrap(direction: Axis.horizontal, children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 60, bottom: 70),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/koyum.png'))),
                  ),
                ],
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 90.0, left: 90, top: 1, bottom: 10),
                          child: ClipOval(
                            child: Container(
                              width: 110,
                              height: 100,

                              /*  margin: EdgeInsets.only(
                                  left: 10, right: 150, top: 50, bottom: 50), */
                              //color: Colors.white,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/ahmet.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        margin: EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 0),
                        /*   width: 250,
                        height: 120, */
                        decoration: BoxDecoration(
                            /*  boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              )
                            ], */
                            /*  image: DecorationImage(
                                image: AssetImage('assets/images/tarla.jpg'),
                                colorFilter: ColorFilter.mode(
                                  Colors.white.withOpacity(0.30),
                                  BlendMode.modulate,
                                ),
                                fit: BoxFit.cover), */
                            //color: Color.fromARGB(255, 221, 73, 14),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 58, vertical: 12),
                        child: TextField(
                            decoration: const InputDecoration(
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.green)),
                                labelText: 'Kullanıcı Adı',
                                labelStyle: TextStyle(
                                    color: Color.fromARGB(255, 239, 80, 7),
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.bold))),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 58, vertical: 2),
                        child: TextField(
                            decoration: const InputDecoration(
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide()),
                                labelText: 'Ürün yetiştirdiğin şehir',
                                labelStyle: TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold))),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 58, vertical: 2),
                        child: TextField(
                            decoration: const InputDecoration(
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide()),
                                labelText: 'Ne/Neler Üretiyorsun?',
                                labelStyle: TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold))),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 45, vertical: 36),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              hintText: 'Kendinden ve tarlandan bahset',
                              hintStyle: TextStyle(fontFamily: 'Quicksand')),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2,
                          left: 45,
                          right: 206,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 54, 167, 63),
                              filled: true,
                              hoverColor: Color.fromARGB(255, 225, 77, 8),
                              /*  border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    width: 0.0),
                              ), */
                              hintText: 'Bütçeni Gir',
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Quicksand')),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Container(
                      // alignment: Alignment.bottomLeft,
                      width: 180,
                      height: 35,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 221, 73, 14)),
                        onPressed: () {
                          //Navigator.push(context, MaterialPageRoute(builder:(context) => login()));
                        },
                        child: const Text('Profili Tamamla',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.start),
                      ),
                    ),
                  ),
                ],
              ),
            ]))));
  }
}
