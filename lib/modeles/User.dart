import '../pages/page4.dart';
import 'children.dart';

class User {
    User({
        this.firstname,
        this.lastname,
        this.email,      
        this.username,
        this.phone,
        this.password,
        
        
       
    });

    String? firstname;
    String? lastname;
    String? email;
    String? username;
    String? phone;
    String? password;
   
    factory User.fromJson(Map<String, dynamic> json) => User(
        firstname: json["firstname"],
        lastname: json["lastname"],
        email: json["email"],   
        username: json["username"],
        phone: json["phone"],
        password: json["password"],
        
    );

    Map<String, dynamic> toJson() => {
        "firstname": firstname,
        "lastname": lastname,
        "email": email,
        "username": username,
        "phone": phone,
        "password": password,
        
    };
}