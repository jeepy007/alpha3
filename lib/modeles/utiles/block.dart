import 'dart:convert';

import 'package:alpha3/modeles/User.dart';
import 'package:alpha3/modeles/baseblock.dart';
import 'package:alpha3/modeles/utiles/request_extension.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';

import 'package:rxdart/rxdart.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import 'loading.dart';
import 'package:http/http.dart' as http;

class ConnexionBloc extends BaseBloc {


  Stream<User> get CustomElementRegistryStream =>
      _CustomElementRegistrySubject.stream;
  final _CustomElementRegistrySubject = BehaviorSubject<User>();

  BehaviorSubject<User> get CustomElementRegistrySubject =>
      _CustomElementRegistrySubject;

  logUser(User user, {bool success = false}) async {
    print("4444");
    RequestExtension<User> requestExtension = RequestExtension();
    print("5555");
    loadingSubject.add(Loading(loading: true, message: "Connexion en cours"));
    print("6666");

    /*  Future<dynamic> response =
        requestExtension.login(UrlConstant.url_authenticate, jsonEncode(user)); */
    final response = await http.post(
        Uri.parse('http://15.188.11.154:3000' +'/auth/login'),
        body: {
          "username": user.username,
          "password": user.password,
        });

    print("======");
    print(response.body);
    print("========yyyyyyyyyyy=======");

    final token = (jsonDecode(response.body)["access_token"]);
   // AppServices().setUser(token);

    if (response.statusCode == 200 || response.statusCode == 201) {
      Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
      print(decodedToken);
      /*  GetIt.I<AppServices>().setPlayerId(decodedToken['id']); */
      //Token user = Token.fromJson(decodedToken);
      //GetIt.I<AppServices>().setUpUSer(user);
      //AppServices().setUpUSer(user);
      // print(AppServices().loginData.iat);
      print("========yyyyyyyyyyy=======");
      success = true;


      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString("userdata", user.id.toString());
      prefs.setString("username", user.username.toString());
    }
    return success;
  }
}