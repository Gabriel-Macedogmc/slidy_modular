import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_5/app/app_module.dart';
import 'package:flutter_modular_5/app/modules/home/home_controller.dart';
import 'package:flutter_modular_5/app/modules/home/home_module.dart';
import 'package:flutter_modular_5/app/shared/repositories/localStorage/local_storage_interface.dart';
import 'package:flutter_modular_5/app/shared/repositories/localStorage/local_storage_mock.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';

main() {
  initModule(AppModule(), replaceBinds: [
    Bind<ILocalStorage>((i) => LocalStorageMock()),
  ]);
  initModule(HomeModule());

  test('click save', () async {
    final HomeController controller = Modular.get();
    controller.txtController.text = 'john doe';
    controller.save();

    expect(controller.list.length, 1);
    expect(controller.list[0], 'john doe');

    List<String> listStorage = await Modular.get<ILocalStorage>().get('key');
    expect(listStorage[0], 'john doe');
  });

  test('click remove', () async {
    final HomeController controller = Modular.get();
    controller.txtController.text = 'john doe';
    controller.save();
    controller.remove(0);

    expect(controller.list.length, 0);
    expect(controller.list.isEmpty, true);

    List<String> listStorage = await Modular.get<ILocalStorage>().get('key');
    expect(listStorage.isEmpty, true);
  });
}
