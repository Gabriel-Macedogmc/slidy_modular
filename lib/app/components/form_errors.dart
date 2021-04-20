import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_5/app/modules/login/login_controller.dart';

class FormError extends StatelessWidget {
  final LoginController controller = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Column(
        children: List.generate(
          controller.errors.length,
          (index) => formErrorText(
            error: controller.errors[index],
          ),
        ),
      );
    });
  }

  Row formErrorText({String error}) {
    return Row(
      children: [
        Icon(
          Icons.error_outline,
          color: Colors.red,
        ),
        SizedBox(
          width: 10,
        ),
        Text(error),
      ],
    );
  }
}
