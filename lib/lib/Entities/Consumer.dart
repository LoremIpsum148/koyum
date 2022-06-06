import 'package:koyum/Entities/metotlar.dart';
import 'package:koyum/Entities/People.dart';
import 'package:koyum/Entities/product.dart';

import 'Address.dart';


class Consumer {

  late String first_name;
  late String last_name;
  late int age;
  late int budget;
  late int investment;
  late String address;
  //late List<Address> address;


  Consumer(this.first_name, this.last_name, this.age, this.budget,
      this.investment, this.address);

  factory Consumer.fromJson(Map<dynamic, dynamic> json){

    //var jsonArray = json["address"] as List;
    //List<Address> addresses = jsonArray.map((jsonArrayObject) => Address.fromJson(jsonArrayObject)).toList();

    return Consumer(

        json["first_name"] as String,
        json["last_name"] as String,
        json["age"] as int,
        json["budget"] as int,
        json["investmet"] as int,
        json["address"] as String,
    );
  }

}

