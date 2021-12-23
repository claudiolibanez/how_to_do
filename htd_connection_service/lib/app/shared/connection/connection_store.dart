import 'dart:io';

import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
import 'package:connectivity/connectivity.dart';

part 'connection_store.g.dart';

class ConnectionStore = _ConnectionStoreBase with _$ConnectionStore;

abstract class _ConnectionStoreBase with Store {
  final Connectivity _connectivity = Connectivity();

  _ConnectionStoreBase() {
    init();
  }

  Future<void> init() async {
    await startMonitoring();
  }

  @observable
  bool isOnline = false;

  @action
  Future<void> startMonitoring() async {
    await initConnectivity();

    _connectivity.onConnectivityChanged.listen((result) async {
      if (result == ConnectivityResult.none) {
        isOnline = false;
      } else {
        await _updateConnectionStatus().then((bool isConnected) => {
              isOnline = isConnected,
            });
      }
    });
  }

  @action
  Future<void> initConnectivity() async {
    try {
      var status = await _connectivity.checkConnectivity();

      if (status == ConnectivityResult.none) {
        isOnline = false;
      } else {
        isOnline = true;
      }
    } on PlatformException catch (err) {
      print('PlatformException: $err');
    } catch (err) {
      print(err);
    }
  }

  Future<bool> _updateConnectionStatus() async {
    bool isConnected = false;

    try {
      final List<InternetAddress> result =
          await InternetAddress.lookup('google.com');

      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        isConnected = true;
      }
    } on SocketException catch (err) {
      isConnected = false;

      print('SocketException $err');
    } catch (err) {
      isConnected = false;

      print(err);
    }

    return isConnected;
  }
}
