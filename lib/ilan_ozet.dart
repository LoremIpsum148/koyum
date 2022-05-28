//import 'package:flutter/cupertino.dart';
// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(ilan());
}

class ilan extends StatefulWidget {
  @override
  State<ilan> createState() => _ilanState();
}

class _ilanState extends State<ilan> {
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
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Text('Fotoğraf'),
                        radius: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 58, vertical: 12),
                        child: TextField(
                            decoration: const InputDecoration(
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.green)),
                                labelText: 'İlan Adı',
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
                                labelText: 'Ürünün Yetiştiği Şehir ',
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
                                labelText: 'Ürün',
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
                              hintText: 'Ürün ve Tarla Hakkında Bilgi',
                              hintStyle: TextStyle(fontFamily: 'Quicksand')),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2,
                          left: 45,
                          right: 200,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 219, 76, 19),
                              filled: true,
                              hoverColor: Color.fromARGB(255, 38, 155, 19),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide:
                                    BorderSide(color: Colors.white, width: 0.0),
                              ),
                              hintText: 'Bütçe',
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Quicksand')),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 18,
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
                        child: const Text('İlana Başvur',
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
