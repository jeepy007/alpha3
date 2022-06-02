import 'package:alpha3/modeles/User.dart';
import 'package:flutter/material.dart';


// To parse this JSON data, do
//
//     final User = UserFromJson(jsonString);

import 'dart:convert';

User UserFromJson(String str) => User.fromJson(json.decode(str));

String UserToJson(User data) => json.encode(data.toJson());


