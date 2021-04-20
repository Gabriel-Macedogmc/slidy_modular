import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular_5/app/shared/auth/repositories/auth_repository_interface.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository implements IAuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future getEmailPasswordLogin({String email, String password}) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('erro de senha');
      }
    }
  }

  @override
  Future<User> getGoogleLogin() async {
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    var userCredential = await _auth.signInWithCredential(credential);
    return userCredential.user;
  }

  @override
  Future createEmailPasswordLogin({String email, String password}) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('erro de senha');
      }
    }
  }

  @override
  Future<String> getToken() {}

  @override
  Future<User> getUser() async {
    return _auth.currentUser;
  }

  @override
  Future getLogout() {
    return _auth.signOut();
  }

  @override
  Future getFacebookLogin() {}
}
