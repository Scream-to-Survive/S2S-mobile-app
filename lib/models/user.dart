import 'dart:convert';

import 'package:s2s/models/chronic_disease.dart';
import 'package:s2s/models/contact.dart';
import 'package:s2s/models/enums/blood_type.dart';
import 'package:s2s/models/enums/gender.dart';
import 'package:s2s/models/location.dart';
import 'package:s2s/models/notification.dart';

User userFromJson(String str) => User.fromMap(json.decode(str));

String userToJson(User data) => json.encode(data.toMap());

class User {
  int id;
  String firstname;
  String lastname;
  String email;
  String phoneNumber;
  String password;
  String address;
  DateTime birthDate;
  List<Contact> contacts;
  Gender gender;
  double height;
  double weight;
  BloodType bloodType;
  List<ChronicDisease> chronicDisease;
  MyLocation location;
  List<MyNotification> notifications;

  User({
    this.id,
    this.firstname,
    this.lastname,
    this.email,
    this.phoneNumber,
    this.password,
    this.address,
    this.birthDate,
    this.contacts,
    this.gender,
    this.height,
    this.weight,
    this.bloodType,
    this.chronicDisease,
    this.location,
  });

  User.withName(
    this.id,
    this.firstname,
    this.lastname,
    this.email,
    this.phoneNumber,
    this.password,
  );

  //initialize user
  factory User.initFromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        email: json["email"],
        phoneNumber: json["phoneNumber"],
        password: json["password"],
      );

  Map<String, dynamic> initToMap() => {
        "id": id,
        "firstname": firstname,
        "lastname": lastname,
        "email": email,
        "phoneNumber": phoneNumber,
        "password": password,
      };

  factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        email: json["email"],
        phoneNumber: json["phoneNumber"],
        password: json["password"],
        address: json["address"],
        birthDate: json["birthDate"],
        contacts: List<Contact>.from(json["contacts"].map((x) => Contact.fromMap(x))),
        gender: json["gender"],
        height: json["height"].toDouble(),
        weight: json["weight"].toDouble(),
        bloodType: json["bloodType"],
        chronicDisease:
            List<ChronicDisease>.from(json["chronicDisease"].map((x) => ChronicDisease.fromMap(x))),
        location: MyLocation.fromMap(json["Location"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "firstname": firstname,
        "lastname": lastname,
        "email": email,
        "phoneNumber": phoneNumber,
        "password": password,
        "address": address,
        "birthDate": birthDate,
        "contacts": List<dynamic>.from(contacts.map((x) => x.toMap())),
        "gender": gender,
        "height": height,
        "weight": weight,
        "bloodType": bloodType,
        "chronicDisease": List<dynamic>.from(chronicDisease.map((x) => x.toMap())),
        "Location": location.toMap(),
      };
}
