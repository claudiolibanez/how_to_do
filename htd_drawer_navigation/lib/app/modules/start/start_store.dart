import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'start_store.g.dart';

class StartStore = _StartStoreBase with _$StartStore;

abstract class _StartStoreBase with Store {
  _StartStoreBase() {
    Modular.to.navigate('/home');
  }
}
