import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_5/app/shared/repositories/localStorage/local_storage_interface.dart';
import 'package:flutter_modular_5/app/shared/repositories/localStorage/local_store_hive.dart';
import 'package:flutter_modular_5/app/shared/repositories/localStorage/local_store_share.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind<ILocalStorage>((i) => LocalStorageHive()),
    //Bind((i) => LocalStorageShare()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];
}
