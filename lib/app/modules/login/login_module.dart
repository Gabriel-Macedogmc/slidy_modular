import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_5/app/modules/login/login_controller.dart';
import 'package:flutter_modular_5/app/modules/login/login_page.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => LoginController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LoginPage()),
  ];
}
