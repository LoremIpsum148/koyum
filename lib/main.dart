// ignore: file_names
import 'package:flutter/material.dart';

void main() {
  runApp(LogUp());
}

class LogUp extends StatelessWidget {
  const LogUp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'köyüm log up',
      home: Scaffold(
        body: Container(
          height: 1000,
          width: 800,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 350,
                height: 80,
                padding: EdgeInsets.only(top: 80, bottom: 70),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          'assets/images/logo.png',
                        ))),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Köyüm, tecrübeli çiftçilerle tüketicileri bir araya getiren, herkese açık bir ekosistemdir.',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5, top: 115),
                child: Container(
                  width: 180,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 221, 73, 14)),
                    onPressed: () {},
                    child: const Text('Ekosisteme Katıl',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.start),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  width: 180,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 221, 73, 14)),
                    onPressed: () {},
                    child: const Text('Giriş Yap',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.start),
                  ),
                ),
              ),

              // padding: const EdgeInsets.only(bottom: 5, top: 165),
              Container(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Ekosistemi Keşfet',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/benimtarlam.png"),
                fit: BoxFit.fitWidth),
          ),
        ),
      ),
    );
  }
}
