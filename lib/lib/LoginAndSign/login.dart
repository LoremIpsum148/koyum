import 'dart:collection';
import 'dart:convert';
import 'dart:ffi';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:koyum/Entities/Consumer.dart';

class login extends StatefulWidget {

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  var refTest = FirebaseDatabase.instance.ref().child("consumer_table");

  String email = "";

  Future<void> customerAdd() async{
    var bilgi = HashMap<String,dynamic>();
    bilgi["first_name"] = "Serhat";
    bilgi["last_name"] = "Bone";
    bilgi["age"] = "40";
    bilgi["budget"] = "100";
    bilgi["investment"] = "50";
    bilgi["address"] = "Adana, Seyhan";
    refTest.push().set(bilgi);
  }

  Future<void> customerDelete() async{
    refTest.child("-N3QLYvKKp9UchnyyDQC").remove();

  }

  Future<void> customerUpdate() async{
    var bilgi = HashMap<String,dynamic>();
    bilgi["first_name"] = "Serhat";
    bilgi["last_name"] = "Can";
    bilgi["age"] = "40";
    bilgi["budget"] = "100";
    bilgi["investment"] = "50";
    bilgi["address"] = "Adana, Seyhan";
    refTest.child("-N3QMcBEwFU6yhY2kk4P").update(bilgi);
  }

  /*Future<List<Consumer>> customerAll() async{

    var consumerListesi = <Consumer>[];

    refTest.onValue.listen((event) {
      var consumers = event.snapshot.value as dynamic;

      if(consumers != null){

        consumers.forEach((key, nesne){
          var consumer = Consumer.fromJson(nesne);
          
          print("**************");
          print("Kişi Key: $key");
          print("Kişi Name: $consumer");
          print("Kişi Key: $key.last_name");
          print("Kişi Key: $key.age");
          print("Kişi Key: $key.budget");
          print("Kişi Key: $key.investment");
          print("Kişi Key: $key.address");
        });
      }

    });
  }*/


  @override
  void initState(){

    super.initState();

    customerAdd();
    //customerDelete();
    //customerUpdate();
    //customerAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0, top: 55, right: 110),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-Mail Adresiniz ${email}',
                    hintStyle: TextStyle(
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color.fromARGB(255, 4, 46, 5),
                    )),
                  onChanged: (newValue){
                    email = newValue;
                  }
                  //'Email',
                  /*style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color.fromARGB(255, 4, 46, 5)),*/
                  //softWrap: true,
                  //textAlign: TextAlign.left,
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 30, right: 30),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintStyle: TextStyle(fontFamily: 'Quicksand'),
                      hintText: 'Email adresinizi giriniz'),
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
                padding: const EdgeInsets.only(left: 0.0, top: 30, right: 110),
                child: Text(
                  'Şifre',
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
                    top: 10, bottom: 20, left: 30, right: 30),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      errorStyle: TextStyle(color: Colors.orange),
                      border: OutlineInputBorder(),
                      labelText: 'Şifre',
                      hintStyle: TextStyle(fontFamily: 'Quicksand'),
                      hintText: 'Şifre oluşturunuz',),
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

                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => login()));

                      },
                      child: Text(
                        'Login',
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
        )
    );
  }

  /*void customerAll() {

    refTest.once().then((value) {
      var gelenDeger = value.snapshot.value as dynamic;

      if( gelenDeger != null){
        gelenDeger.forEach((key, nesne){
          var gelenKisi = Consumer.fromJson(nesne);
          print("*******************");
          print("Kişi key : $key");
          *//*print("Kişi ad : ${gelenKisi.first_name.toString()}");
          print("Kişi yaş : ${gelenKisi.last_name.toString()}");
          print("Kişi yaş : ${gelenKisi.age.toString()}");
          print("Kişi yaş : ${gelenKisi.budget.toString()}");
          print("Kişi yaş : ${gelenKisi.investment.toString()}");
          print("Kişi yaş : ${gelenKisi.address.toString()}");*//*
        });
      }

    });
  }*/
}
