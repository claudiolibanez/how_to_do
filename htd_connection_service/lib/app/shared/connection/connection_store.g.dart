// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConnectionStore on _ConnectionStoreBase, Store {
  final _$isOnlineAtom = Atom(name: '_ConnectionStoreBase.isOnline');

  @override
  bool get isOnline {
    _$isOnlineAtom.reportRead();
    return super.isOnline;
  }

  @override
  set isOnline(bool value) {
    _$isOnlineAtom.reportWrite(value, super.isOnline, () {
      super.isOnline = value;
    });
  }

  final _$startMonitoringAsyncAction =
      AsyncAction('_ConnectionStoreBase.startMonitoring');

  @override
  Future<void> startMonitoring() {
    return _$startMonitoringAsyncAction.run(() => super.startMonitoring());
  }

  final _$initConnectivityAsyncAction =
      AsyncAction('_ConnectionStoreBase.initConnectivity');

  @override
  Future<void> initConnectivity() {
    return _$initConnectivityAsyncAction.run(() => super.initConnectivity());
  }

  @override
  String toString() {
    return '''
isOnline: ${isOnline}
    ''';
  }
}
