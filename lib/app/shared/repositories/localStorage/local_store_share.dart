import 'dart:async';

import 'package:flutter_modular_5/app/shared/repositories/localStorage/local_storage_interface.dart';

import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageShare implements ILocalStorage {
  Completer<SharedPreferences> _instance = Completer<SharedPreferences>();

  _init() async {
    var box = await SharedPreferences.getInstance();
    _instance.complete(box);
  }

  LocalStorageShare() {
    _init();
  }

  @override
  Future<List<String>> get(String key) async {
    var shared = await _instance.future;
    return shared.getStringList(key);
  }

  @override
  Future put(String key, List<String> value) async {
    var shared = await _instance.future;
    shared.setStringList(key, value);
  }

  @override
  Future delete(String key) async {
    var shared = await _instance.future;
    shared.remove(key);
  }
}
