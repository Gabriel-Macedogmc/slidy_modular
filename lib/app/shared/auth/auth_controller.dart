import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter_modular_5/app/shared/auth/repositories/auth_repository_interface.dart';
import 'package:mobx/mobx.dart';
part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  final IAuthRepository _authRepository = Modular.get();

  @observable
  User user;

  @action
  Future loginWithGoogle() async {
    user = await _authRepository.getGoogleLogin();
  }

  @action
  Future logOut() {
    return _authRepository.getLogout();
  }

  @action
  Future loginWithEmailPassword({String email, String password}) async {
    user = await _authRepository.getEmailPasswordLogin(
      email: email,
      password: password,
    );

    if (!user.emailVerified) {
      await user.sendEmailVerification();
    }

    return user;
  }

  @action
  Future createLoginWithEmailPassword({String email, String password}) async {
    user = await _authRepository.createEmailPasswordLogin(
      email: email,
      password: password,
    );
    if (!user.emailVerified) {
      await user.sendEmailVerification();
    }

    return user;
  }

  _AuthControllerBase() {
    _authRepository.getUser().then(setUser);
  }

  @action
  setUser(User value) => user = value;
}
