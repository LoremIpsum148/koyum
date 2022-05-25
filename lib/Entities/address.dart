class address{

  String? _city;
  String? _koyu;
  String? _village;

  address(this._city, this._koyu, this._village);

  set village(String value) {
    _village = value;
  }

  set koyu(String value) {
    _koyu = value;
  }

  set city(String value) {
    _city = value;
  }
}