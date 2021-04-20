import 'package:flutter/material.dart';

class HeadWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Text(
              'Bem-vindo de Volta!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Faça Login com seu email e senha \n',
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
