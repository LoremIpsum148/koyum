import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(consumerprofile());
}

class consumerprofile extends StatelessWidget {
  const consumerprofile({Key? key}) : super(key: key);

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
                      Center(
                        child: CircleAvatar(
                          radius: 55,
                          // ignore: unnecessary_null_comparison
                          /*  backgroundImage: _imageFile == null?
                              AssetImage("assets/images/ahmet.jpg"):
                               FileImage(File(path)),  */
                          child: ClipOval(
                            child: Container(
                              width: 110,
                              height: 110,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () { },
                        child: Icon(
                          Icons.camera_alt,
                          color: Color.fromARGB(255, 241, 76, 10),
                          size: 18.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 58, vertical: 12),
                        child: TextField(
                            decoration: const InputDecoration(
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.green)),
                                labelText: 'Kullanıcı Adı',
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
                                labelText: 'Yaşadığın Şehir',
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
                                labelText: 'Ne Üretmek İstiyorsun?',
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
                              hintText:
                                  'Çiftçilerin seni anlaması için taleplerinden bahset',
                              hintStyle: TextStyle(fontFamily: 'Quicksand')),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Container(
                      // alignment: Alignment.bottomLeft,
                      width: 180,
                      height: 35,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 221, 73, 14)),
                        onPressed: () {
                          showBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 200,
                                  color: Colors.amber,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        const Text('Modal BottomSheet'),
                                        ElevatedButton(
                                          child:
                                              const Text('Close BottomSheet'),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              });
                          //Navigator.push(context, MaterialPageRoute(builder:(context) => login()));
                        },
                        child: const Text('Profili Tamamla',
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
