import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_5/app/modules/login/login_module.dart';
import 'package:flutter_modular_5/app/shared/auth/auth_controller.dart';
import 'package:flutter_modular_5/app/shared/auth/repositories/auth_repository.dart';
import 'package:flutter_modular_5/app/shared/auth/repositories/auth_repository_interface.dart';
import 'package:flutter_modular_5/app/shared/repositories/localStorage/local_storage_interface.dart';
import 'package:flutter_modular_5/app/shared/repositories/localStorage/local_store_hive.dart';
import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind<ILocalStorage>((i) => LocalStorageHive()),
    Bind<IAuthRepository>((i) => AuthRepository()),
    Bind((i) => AuthController()),
    //Bind((i) => LocalStorageShare()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: LoginModule()),
    ModuleRoute('/home', module: HomeModule()),
  ];
}
