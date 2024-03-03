/// image : "https://media.istockphoto.com/id/1319763895/photo/smiling-mixed-race-mature-man-on-grey-background.jpg?s=1024x1024&w=is&k=20&c=N8tCKAiS77uX8ZGltdjkhzh5pXzvuNHg48acJETZfs8="
/// Name : "Terry"
/// age : 50
/// gender : "male"
/// birthDate : "2000-12-25"
/// phone : "+63 791 675 8914"
/// cell : "94156321062"
/// email : "atuny0@sohu.com"
/// address : "1745 T StreetvSoutheast"
/// city : "Washington"
/// state : "DC"
/// Country : "US"
/// postalCode : "20020"

class Usermodel {
  Usermodel({
      String? image, 
      String? name, 
      num? age, 
      String? gender, 
      String? birthDate, 
      String? phone, 
      String? cell, 
      String? email, 
      String? address, 
      String? city, 
      String? state, 
      String? country, 
      String? postalCode,}){
    _image = image;
    _name = name;
    _age = age;
    _gender = gender;
    _birthDate = birthDate;
    _phone = phone;
    _cell = cell;
    _email = email;
    _address = address;
    _city = city;
    _state = state;
    _country = country;
    _postalCode = postalCode;
}

  Usermodel.fromJson(dynamic json) {
    _image = json['image'];
    _name = json['Name'];
    _age = json['age'];
    _gender = json['gender'];
    _birthDate = json['birthDate'];
    _phone = json['phone'];
    _cell = json['cell'];
    _email = json['email'];
    _address = json['address'];
    _city = json['city'];
    _state = json['state'];
    _country = json['Country'];
    _postalCode = json['postalCode'];
  }
  String? _image;
  String? _name;
  num? _age;
  String? _gender;
  String? _birthDate;
  String? _phone;
  String? _cell;
  String? _email;
  String? _address;
  String? _city;
  String? _state;
  String? _country;
  String? _postalCode;
Usermodel copyWith({  String? image,
  String? name,
  num? age,
  String? gender,
  String? birthDate,
  String? phone,
  String? cell,
  String? email,
  String? address,
  String? city,
  String? state,
  String? country,
  String? postalCode,
}) => Usermodel(  image: image ?? _image,
  name: name ?? _name,
  age: age ?? _age,
  gender: gender ?? _gender,
  birthDate: birthDate ?? _birthDate,
  phone: phone ?? _phone,
  cell: cell ?? _cell,
  email: email ?? _email,
  address: address ?? _address,
  city: city ?? _city,
  state: state ?? _state,
  country: country ?? _country,
  postalCode: postalCode ?? _postalCode,
);
  String? get image => _image;
  String? get name => _name;
  num? get age => _age;
  String? get gender => _gender;
  String? get birthDate => _birthDate;
  String? get phone => _phone;
  String? get cell => _cell;
  String? get email => _email;
  String? get address => _address;
  String? get city => _city;
  String? get state => _state;
  String? get country => _country;
  String? get postalCode => _postalCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['image'] = _image;
    map['Name'] = _name;
    map['age'] = _age;
    map['gender'] = _gender;
    map['birthDate'] = _birthDate;
    map['phone'] = _phone;
    map['cell'] = _cell;
    map['email'] = _email;
    map['address'] = _address;
    map['city'] = _city;
    map['state'] = _state;
    map['Country'] = _country;
    map['postalCode'] = _postalCode;
    return map;
  }

}