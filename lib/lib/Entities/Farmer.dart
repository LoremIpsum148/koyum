class Farmer {

  String? first_name;
  String? last_name;
  int? age;

  Farmer(this.first_name, this.last_name, this.age);

  factory Farmer.fromJson(Map<dynamic, dynamic> json){
    return Farmer(json["first_name"] as String, json["last_name"] as String, json["age"] as int);
  }



}