//import 'package:flutter/cupertino.dart';
// ignore_for_file: deprecated_member_use

import 'dart:collection';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:koyum/Farmer/farmer.dart';
import 'package:koyum/main.dart';

/*void main() {
  runApp(signinFarmer());
}*/

class signinFarmer extends StatefulWidget {

  @override
  State<signinFarmer> createState() => _signinFarmerState();
}

class _signinFarmerState extends State<signinFarmer> {
  var refFarmer = FirebaseDatabase.instance.ref().child("farmer_tablo");

  String email = "";

  Future<void> farmerEkle() async{
    var bilgi = HashMap<String,dynamic>();
    bilgi["first_name"] = email;
    bilgi["last_name"] = "Dart";
    bilgi["age"] = 28;

    refFarmer.push().set(bilgi);

  }

  @override
  void initState(){
    super.initState();
    farmerEkle();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'köyüm',
        theme: ThemeData(backgroundColor: Color.fromARGB(255, 225, 222, 216)),
        home: Scaffold(
            body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/koyum.png'))),
            ),
            Container(
              child:Text (
                'Kolayca kayıt ol, üretmeye başla',
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color.fromARGB(255, 4, 46, 5)),
                softWrap: true,
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0, top: 55, right: 110),
                child: Text(

                  'Email ile kaydol',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color.fromARGB(255, 4, 46, 5)),
                  softWrap: true,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 30, right: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintStyle: TextStyle(fontFamily: 'Quicksand'),
                      hintText: 'Email adresinizi giriniz' + email),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Geçerli bir email giriniz';
                    }
                    return null;
                  },
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 0, bottom: 10, left: 30, right: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                      errorStyle: TextStyle(color: Colors.orange),
                      border: OutlineInputBorder(),
                      labelText: 'Şifre',
                      hintStyle: TextStyle(fontFamily: 'Quicksand'),
                      hintText: 'Şifre oluşturunuz'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  Container(
                    width: 230,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 221, 73, 14)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => farmer()));
                          setState(){

                          }
                        ;
                      },
                      child: Text(
                        'Devam et',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    width: 230,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 221, 73, 14)),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => logUp()),
                        );
                      },
                      child: Text(
                        'Ana Sayfaya Dön',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )));
  }
}
