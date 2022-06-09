import '../pages/page4.dart';
import 'children.dart';

class User {
  Object? iat;

    User({
        this.firstname,
        this.lastname,
        this.email,      
        this.username,
        this.phone,
        this.password,
        this.id,   
    });

    String? firstname;
    String? lastname;
    String? email;
    String? username;
    String? phone;
    String? password;
    int? id;
   
    factory User.fromJson(Map<String, dynamic> json) => User(
        firstname: json["firstname"],
        lastname: json["lastname"],
        email: json["email"],   
        username: json["username"],
        phone: json["phone"],
        password: json["password"],
        id: json["id"],

        
    );

    Map<String, dynamic> toJson() => {
        "firstname": firstname,
        "lastname": lastname,
        "email": email,
        "username": username,
        "phone": phone,
        "password": password,
        "id": id,
    };
}