class Address{

  late String city;
  late String town;

  Address(this.city, this.town);

  factory Address.fromJson(Map<String, dynamic> json){

    return Address(json["city"] as String, json["town"] as String);
  }




}