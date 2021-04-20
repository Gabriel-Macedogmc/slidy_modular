import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_5/app/shared/auth/auth_controller.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final AuthController _authController = Modular.get();
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @observable
  bool loading = false;

  @observable
  bool visible = false;

  @observable
  ObservableList<String> errors = <String>[].asObservable();

  @action
  removeError({String error}) {
    if (errors.contains(error)) {
      return errors.remove(error);
    }
    return null;
  }

  @action
  addError({String error}) {
    if (!errors.contains(error)) {
      errors.add(error);
    }
    return null;
  }

  @action
  Future loginWithGoogle() async {
    try {
      loading = true;
      await _authController.loginWithGoogle();
      Modular.to.pushReplacementNamed('/home');
    } catch (e) {
      loading = false;
    }
  }

  @action
  Future createLoginWithEmailPassword() async {
    try {
      await _authController.createLoginWithEmailPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Modular.to.pushReplacementNamed('/home');
    } catch (e) {}
  }

  @action
  Future getLoginWithEmailPassword() async {
    try {
      loading = true;
      await _authController.loginWithEmailPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Modular.to.pushReplacementNamed('/home');
    } catch (e) {
      loading = false;
    }
  }
}
