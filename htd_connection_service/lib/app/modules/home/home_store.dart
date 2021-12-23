import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

// connection store
import 'package:htd_connection_service/app/shared/connection/connection_store.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  final ConnectionStore _connectionStore = Modular.get();

  bool get isOnline => _connectionStore.isOnline;
}
