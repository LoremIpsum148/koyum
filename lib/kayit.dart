import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const kayit());
}

class kayit extends StatelessWidget {
  const kayit({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'köyüm',
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: Scaffold(
        /*   appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.purple,
          ),
        ), */
        bottomNavigationBar: Container(
          height: 60,
          color: Colors.black12,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 75)),
                Icon(Icons.person,
                    size: 40, color: Color.fromARGB(255, 229, 117, 12)),
                Padding(padding: EdgeInsets.only(left: 50)),
                Icon(Icons.home,
                    size: 40, color: Color.fromARGB(255, 229, 117, 12)),
                Padding(padding: EdgeInsets.only(left: 50)),
                Icon(Icons.settings,
                    size: 40, color: Color.fromARGB(255, 229, 117, 12)),
                Padding(padding: EdgeInsets.only(left: 50)),
                Icon(Icons.message,
                    size: 40, color: Color.fromARGB(255, 229, 117, 12))
              ],
            ),
          ),
        ),
        body: Container(
          child: ListView(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      /* width: 70,
                      height: 0, */
                      child: Image.asset(
                        "assets/images/koyum.png",
                      ),
                    ),
                  ],
                ),
              ),
              /*  Container(
                margin: EdgeInsets.only(left: 28),
                // padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Hoş Geldin İpek',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'QuickSand'),
                ),
              ), */
              Container(
                  padding: EdgeInsets.all(10),
                  height: 210,
                  width: 199,
                  margin: EdgeInsets.only(
                    top: 40,
                    left: 20,
                    right: 20,
                  ),
                  child: Container(
                    child: Container(
                      padding: EdgeInsets.only(left: 5, bottom: 3),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Çiftçi olarak katıl',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Quicksand-Bold'),
                      ),
                    ),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/images/ciftci.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Color.fromARGB(255, 255, 255, 255)),
                  )),
              Container(
                  padding: EdgeInsets.all(10),
                  height: 190,
                  width: 100,
                  margin: EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                  ),
                  child: Container(
                    child: Container(
                      padding: EdgeInsets.only(left: 5, bottom: 3),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Tüketici olarak katıl',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'QuickSand'),
                      ),
                    ),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/images/profil.png'),
                            fit: BoxFit.contain,
                            alignment: Alignment.topCenter),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Color.fromARGB(255, 255, 255, 255)),
                  )),
              /*       Container(
                  padding: EdgeInsets.all(10),
                  height: 190,
                  width: 199,
                  margin: EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                  ),
                  child: Container(
                    child: Container(
                      padding: EdgeInsets.only(left: 5, bottom: 3),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Koleksiyonerleri keşfet',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'QuickSand'),
                      ),
                    ),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 6,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/images/profil.png'),
                            fit: BoxFit.contain,
                            alignment: Alignment.topCenter),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Color.fromARGB(246, 255, 255, 255)),
                  )), */
            ],
          ),
        ),
      ),
    );
  }
}
