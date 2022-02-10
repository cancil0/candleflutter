import 'package:jwt_decode/jwt_decode.dart';

import 'environment.dart';

class UserService {
  static String userName = '';
  static String email = '';
  static String id = '';
  static String userNameSurname = '';
  static DateTime expires = DateTime.now();

  static void setUserInfo() {
    Map<String, dynamic> jwtList = Jwt.parseJwt(Environment.token);
    id = jwtList['id'];
    userNameSurname = jwtList['userNameSurname'];
    userName = jwtList['userName'];
    email = jwtList['email'];
    expires = DateTime.parse(jwtList['expires']);
  }
}
