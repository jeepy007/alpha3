import 'package:flutter/material.dart';


// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
        this.firstname,
        this.lastname,
        this.profession,
        this.schooId,
        this.classeId,
        this.email,
        this.matricule,
        this.username,
        this.phone,
        this.password,
        this.photo,
        this.profileId,
        this.certifiedBy,
        this.status,
        this.urgencyContactId,
        this.children,
        this.dateValidator,
    });

    String? firstname;
    String? lastname;
    String? profession;
    int? schooId;
    int? classeId;
    String? email;
    String? matricule;
    String? username;
    String? phone;
    String? password;
    String? photo;
    int? profileId;
    int? certifiedBy;
    int? status;
    int? urgencyContactId;
    Children? children;
    String? dateValidator;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        firstname: json["firstname"],
        lastname: json["lastname"],
        profession: json["profession"],
        schooId: json["schooId"],
        classeId: json["classeId"],
        email: json["email"],
        matricule: json["matricule"],
        username: json["username"],
        phone: json["phone"],
        password: json["password"],
        photo: json["photo"],
        profileId: json["profileId"],
        certifiedBy: json["certifiedBy"],
        status: json["status"],
        urgencyContactId: json["urgencyContactId"],
        children: Children.fromJson(json["children"]),
        dateValidator: json["dateValidator"],
    );

    Map<String, dynamic> toJson() => {
        "firstname": firstname,
        "lastname": lastname,
        "profession": profession,
        "schooId": schooId,
        "classeId": classeId,
        "email": email,
        "matricule": matricule,
        "username": username,
        "phone": phone,
        "password": password,
        "photo": photo,
        "profileId": profileId,
        "certifiedBy": certifiedBy,
        "status": status,
        "urgencyContactId": urgencyContactId,
        "children": children!.toJson(),
        "dateValidator": dateValidator,
    };
}

class Children {
    Children();

    factory Children.fromJson(Map<String, dynamic> json) => Children(
    );

    Map<String, dynamic> toJson() => {
    };
}
