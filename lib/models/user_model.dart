import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  final String? name;
  final String? email;
  final String? password;
  final String? photo;
  UserModel({
    this.name,
    this.email,
    this.password,
    this.photo,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      password: json['password'],
      photo: json['photo'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'photo': photo,
    };
  }
}
