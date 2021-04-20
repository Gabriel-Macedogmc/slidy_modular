import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthRepository {
  Future<User> getUser();
  Future<User> getGoogleLogin();
  Future getFacebookLogin();
  Future getEmailPasswordLogin({String email, String password});
  Future createEmailPasswordLogin({String email, String password});
  Future<String> getToken();
  Future getLogout();
}
