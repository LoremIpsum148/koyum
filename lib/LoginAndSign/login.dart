import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class login extends StatefulWidget {

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
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
                child: Text(
                  'Email',
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
}
