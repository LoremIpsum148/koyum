import 'package:koyum/Entities/address.dart';

class people{

  String? _first_name;
  String? _last_name;
  int? _age;
  address? _people_address;

  String get first_name => _first_name!;

  set first_name(String value) {
    _first_name = value;
  }

  String get last_name => _last_name!;

  set last_name(String value) {
    _last_name = value;
  }

  address get people_address => _people_address!;

  set people_address(address value) {
    _people_address = value;
  }

  int get age => _age!;

  set age(int value) {
    _age = value;
  }
}