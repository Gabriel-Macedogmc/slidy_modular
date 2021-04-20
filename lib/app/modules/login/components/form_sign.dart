import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_5/app/modules/login/login_controller.dart';
import 'package:flutter_modular_5/app/shared/utils/constants.dart';

class FormSign extends StatefulWidget {
  @override
  _FormSignState createState() => _FormSignState();
}

class _FormSignState extends ModularState<FormSign, LoginController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: controller.emailController,
          onChanged: (value) {
            if (value.isNotEmpty) {
              controller.removeError(error: kEmailNullError);
            } else if (emailValidatorRegExp.hasMatch(value)) {
              controller.removeError(error: kInvalidEmailError);
            }
          },
          validator: (value) {
            if (value.isEmpty) {
              controller.addError(error: kEmailNullError);
              return '';
            } else if (!emailValidatorRegExp.hasMatch(value)) {
              controller.addError(error: kInvalidEmailError);
              return '';
            }
          },
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'Digite seu email',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(height: 10),
        TextFormField(
          controller: controller.passwordController,
          onChanged: (value) {
            if (value.isNotEmpty) {
              controller.removeError(error: kPassNullError);
            } else if (value.length >= 8) {
              controller.removeError(error: kShortPassError);
            }
          },
          validator: (value) {
            if (value.isEmpty) {
              controller.addError(error: kPassNullError);
              return '';
            } else if (value.length < 8) {
              controller.addError(error: kShortPassError);
              return '';
            }
          },
          obscureText: controller.visible,
          decoration: InputDecoration(
            labelText: 'Senha',
            hintText: 'Digite sua senha',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            suffixIcon: IconButton(
              icon: Icon(Icons.visibility_off_outlined),
              onPressed: () {},
            ),
          ),
        )
      ],
    );
  }
}
