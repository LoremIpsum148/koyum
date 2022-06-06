//import 'package:flutter/cupertino.dart';
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:koyum/Consumer/consumer.dart' show consumer;
import 'package:koyum/Farmer/farmer.dart';
import 'package:koyum/LoginAndSign/signin_farmer.dart';
import 'package:koyum/signin_farmer.dart';
import 'package:koyum/SignInConsumer.dart';

/*void main() {
  runApp(kayit());
}*/

class kayit extends StatefulWidget {
  @override
  State<kayit> createState() => _kayitState();
}

//title: 'köyüm',

class _kayitState extends State<kayit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
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
                      padding: EdgeInsets.only(top: 10, bottom: 10, left: 100),
                      child: Text('Merhaba Çevreci!',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 18,
                              color: Color.fromARGB(255, 4, 46, 5))),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 30, left: 80),
                      child: Text(
                        'Ekosisteme Hoş Geldin!',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color.fromARGB(255, 4, 46, 5)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 2, bottom: 3, left: 30, right: 50),
                      child: Text(
                        'Hayalindeki çiftçiyi mi arıyorsun, yoksa ürünü ekecek çiftçi misin?',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color.fromARGB(255, 4, 46, 5)),
                        softWrap: true,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        ontop:
                        () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => signin_Farmer()));
                        };
                      },
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
                                'Çiftçi Olarak Katıl',
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
                                image: AssetImage('assets/images/toprak2.jpg'),
                                fit: BoxFit.cover),
                            color: Color.fromARGB(255, 221, 73, 14),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        ontop:
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInConsumer(),
                            ),
                          );
                        };
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 5, top: 5, bottom: 30),
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
                                'Tüketici Olarak Katıl',
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
                                image: AssetImage('assets/images/tuketici.jpg'),
                                fit: BoxFit.cover),
                            color: Color.fromARGB(255, 221, 73, 14),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      ),
                    )
                  ],
                ))),
      ),
    );
  }

  signin_Farmer() {}
}
