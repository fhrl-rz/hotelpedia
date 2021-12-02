class UserModel {
  String? uid;
  String? email;
  String? password;
  String? fullName;
  String? PhoneNumber;

  UserModel(
      {this.uid, this.email, this.password, this.fullName, this.PhoneNumber});

  //receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      password: map['password'],
      fullName: map['fullName'],
      PhoneNumber: map['PhoneNumber'],
    );
  }
  //sending  data to our  server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'password': password,
      'fullName': fullName,
      'PhoneNumber': PhoneNumber,
    };
  }
}
