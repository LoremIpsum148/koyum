//import 'package:flutter/cupertino.dart';
// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(ConsumerProfile());
}

class ConsumerProfile extends StatefulWidget {
  @override
  State<ConsumerProfile> createState() => _ConsumerProfileState();
}

class _ConsumerProfileState extends State<ConsumerProfile> {
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
                        decoration: BoxDecoration(
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
                                labelText: 'Yaşadığın Şehir',
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
                                labelText: 'Ne/Neler Üretmek İstiyorsun?',
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
                              hintText: 'Çiftçilere Kendini Tanıt',
                              hintStyle: TextStyle(fontFamily: 'Quicksand')),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2,
                          left: 45,
                          right: 206,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Container(
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
