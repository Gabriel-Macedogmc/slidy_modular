// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthController on _AuthControllerBase, Store {
  final _$userAtom = Atom(name: '_AuthControllerBase.user');

  @override
  User get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(User value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$loginWithGoogleAsyncAction =
      AsyncAction('_AuthControllerBase.loginWithGoogle');

  @override
  Future<dynamic> loginWithGoogle() {
    return _$loginWithGoogleAsyncAction.run(() => super.loginWithGoogle());
  }

  final _$loginWithEmailPasswordAsyncAction =
      AsyncAction('_AuthControllerBase.loginWithEmailPassword');

  @override
  Future<dynamic> loginWithEmailPassword({String email, String password}) {
    return _$loginWithEmailPasswordAsyncAction.run(
        () => super.loginWithEmailPassword(email: email, password: password));
  }

  final _$createLoginWithEmailPasswordAsyncAction =
      AsyncAction('_AuthControllerBase.createLoginWithEmailPassword');

  @override
  Future<dynamic> createLoginWithEmailPassword(
      {String email, String password}) {
    return _$createLoginWithEmailPasswordAsyncAction.run(() =>
        super.createLoginWithEmailPassword(email: email, password: password));
  }

  final _$_AuthControllerBaseActionController =
      ActionController(name: '_AuthControllerBase');

  @override
  Future<dynamic> logOut() {
    final _$actionInfo = _$_AuthControllerBaseActionController.startAction(
        name: '_AuthControllerBase.logOut');
    try {
      return super.logOut();
    } finally {
      _$_AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setUser(User value) {
    final _$actionInfo = _$_AuthControllerBaseActionController.startAction(
        name: '_AuthControllerBase.setUser');
    try {
      return super.setUser(value);
    } finally {
      _$_AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user}
    ''';
  }
}
