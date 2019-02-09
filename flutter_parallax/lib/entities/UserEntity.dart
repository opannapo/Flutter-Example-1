class UserEntity {
  String fullname;
  String bio;
  String photo;
  String email;
  String gender;
  String phone;
  Address address;

  UserEntity(
      {this.fullname,
      this.bio,
      this.photo,
      this.email,
      this.gender,
      this.phone,
      this.address});

  factory UserEntity.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> user = json['data'];

    Address address = Address.fromJson(user['address']);

    return UserEntity(
        fullname: user['fullname'] as String,
        bio: user['bio'] as String,
        photo: user['photo'] as String,
        email: user['email'] as String,
        gender: user['gender'] as String,
        phone: user['phone'] as String,
        address: address);
  }
}

class Address {
  String address;
  String city;
  String region;
  String area;

  Address({this.address, this.city, this.region, this.area});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
        address: json['address'] as String,
        city: json['city'] as String,
        region: json['region'] as String,
        area: json['area'] as String);
  }
}
