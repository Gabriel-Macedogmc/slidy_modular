import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_5/app/shared/repositories/localStorage/local_storage_interface.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final ILocalStorage _storage = Modular.get();

  final txtController = TextEditingController();

  @observable
  ObservableList<String> list = <String>[].asObservable();

  _HomeControllerBase() {
    init();
  }

  @action
  init() async {
    List<String> listLocal = await _storage.get('list');
    if (listLocal == null) {
      list = <String>[].asObservable();
    } else {
      list = listLocal.asObservable();
    }
  }

  @action
  void save() {
    list.add(txtController.text);
    _storage.put('list', list);
    txtController.clear();
  }

  @action
  void remove(int index) {
    list.removeAt(index);
    _storage.put('list', list);
  }
}
