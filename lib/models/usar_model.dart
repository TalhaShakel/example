// ignore_for_file: unused_import

class UserModel {
  String? uid;
  String? email;
  String? firstName;
  String? secondName;
  String? stateName;
  String? birthdate;
  String? phone;

  UserModel(
      {this.uid,
      this.email,
      this.firstName,
      this.secondName,
      this.stateName,
      this.birthdate,
      this.phone});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
        uid: map['uid'],
        email: map['email'],
        firstName: map['firstName'],
        secondName: map['secondName'],
        stateName: map['state'],
        birthdate: map['birthdate'],
        phone: map['phone']);
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'secondName': secondName,
      'state': stateName,
      'birthdate': birthdate,
      'phone': phone,
    };
  }
}
