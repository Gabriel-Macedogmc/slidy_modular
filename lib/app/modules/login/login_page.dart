import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_5/app/components/default_button.dart';
import 'package:flutter_modular_5/app/components/form_errors.dart';
import 'package:flutter_modular_5/app/modules/login/components/form_sign.dart';
import 'package:flutter_modular_5/app/modules/login/login_controller.dart';

import 'components/head_widget.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "LoginPage"}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends ModularState<LoginPage, LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeadWidget(),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    FormSign(),
                    SizedBox(height: 10),
                    FormError(),
                    SizedBox(height: 10),
                    DefaultButton(
                      press: () {
                        if (controller.formKey.currentState.validate()) {
                          controller.formKey.currentState.save();
                          controller.getLoginWithEmailPassword();
                        }
                      },
                      text: 'Logar',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
