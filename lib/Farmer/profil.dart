import 'package:flutter/material.dart';

class profil extends StatelessWidget {
  String farmer_name = "Ali";
  String farmer_surname = "Çiftçi";
  int age = 50;
  String city = "Adana";
  String product = "Portakal";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "profil",
        home: Scaffold(
          body: Center(
            child: Container(

          ),
        ),
    ),
    );
  }
}
