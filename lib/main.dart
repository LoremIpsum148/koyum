import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var title = "Login";

  void _incrementCounter() {
    setState(() {
      title;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    /*  appBar: AppBar(
        // backgroundColor: Colors.green,
        // title: Text(title),
      ), */
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/benimtarlam.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
