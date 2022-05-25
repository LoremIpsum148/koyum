//import 'package:flutter/cupertino.dart';
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(SignIn());
}

class SignIn extends StatelessWidget {
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
              child: Text(
                'Tekrar Hoş Geldin!',
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
                padding: const EdgeInsets.only(left: 10, top: 55, right: 110),
                child: Text(
                  'Hemen Giriş Yap',
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
                      labelText: 'E-Mail Adresiniz',
                      hintStyle: TextStyle(fontFamily: 'Quicksand'),
                      hintText: 'E-Mail adresinizi giriniz'),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Geçerli bir e-mail adresi giriniz!';
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
                      labelText: 'Şifrenizi giriniz',
                      hintStyle: TextStyle(fontFamily: 'Quicksand'),
                      hintText: 'Geçerli şifrenizi giriniz'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Container(
                width: 230,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 221, 73, 14)),
                  onPressed: () {},
                  child: Text(
                    'Giriş Yap',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        )));
  }
}
