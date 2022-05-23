import 'package:koyum/Entities/metotlar.dart';
import 'package:koyum/Entities/people.dart';
import 'package:koyum/Entities/product.dart';

class consumer extends people implements metotlar{

  String? _username;
  String? _password;
  List<product>? _products;

  String get password => _password!;

  set password(String value) {
    _password = value;
  }

  String get username => _username!;

  set username(String value) {
    _username = value;
  }


  @override
  int investment() {
    // TODO: implement investment
    throw UnimplementedError();
  }

  @override
  int money_down() {
    // TODO: implement money_down
    throw UnimplementedError();
  }

  @override
  int money_up() {
    // TODO: implement money_up
    throw UnimplementedError();
  }



  @override
  List<product> products({String? product}) {
    // TODO: implement products

    throw UnimplementedError();
  }






}