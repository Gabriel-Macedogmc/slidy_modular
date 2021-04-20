// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  final _$loadingAtom = Atom(name: '_LoginControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$visibleAtom = Atom(name: '_LoginControllerBase.visible');

  @override
  bool get visible {
    _$visibleAtom.reportRead();
    return super.visible;
  }

  @override
  set visible(bool value) {
    _$visibleAtom.reportWrite(value, super.visible, () {
      super.visible = value;
    });
  }

  final _$errorsAtom = Atom(name: '_LoginControllerBase.errors');

  @override
  ObservableList<String> get errors {
    _$errorsAtom.reportRead();
    return super.errors;
  }

  @override
  set errors(ObservableList<String> value) {
    _$errorsAtom.reportWrite(value, super.errors, () {
      super.errors = value;
    });
  }

  final _$loginWithGoogleAsyncAction =
      AsyncAction('_LoginControllerBase.loginWithGoogle');

  @override
  Future<dynamic> loginWithGoogle() {
    return _$loginWithGoogleAsyncAction.run(() => super.loginWithGoogle());
  }

  final _$createLoginWithEmailPasswordAsyncAction =
      AsyncAction('_LoginControllerBase.createLoginWithEmailPassword');

  @override
  Future<dynamic> createLoginWithEmailPassword() {
    return _$createLoginWithEmailPasswordAsyncAction
        .run(() => super.createLoginWithEmailPassword());
  }

  final _$getLoginWithEmailPasswordAsyncAction =
      AsyncAction('_LoginControllerBase.getLoginWithEmailPassword');

  @override
  Future<dynamic> getLoginWithEmailPassword() {
    return _$getLoginWithEmailPasswordAsyncAction
        .run(() => super.getLoginWithEmailPassword());
  }

  final _$_LoginControllerBaseActionController =
      ActionController(name: '_LoginControllerBase');

  @override
  dynamic removeError({String error}) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.removeError');
    try {
      return super.removeError(error: error);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addError({String error}) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.addError');
    try {
      return super.addError(error: error);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
visible: ${visible},
errors: ${errors}
    ''';
  }
}
