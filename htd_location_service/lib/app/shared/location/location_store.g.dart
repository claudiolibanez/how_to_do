// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LocationStore on _LocationStoreBase, Store {
  final _$currentLocationAtom =
      Atom(name: '_LocationStoreBase.currentLocation');

  @override
  UserLocationModel? get currentLocation {
    _$currentLocationAtom.reportRead();
    return super.currentLocation;
  }

  @override
  set currentLocation(UserLocationModel? value) {
    _$currentLocationAtom.reportWrite(value, super.currentLocation, () {
      super.currentLocation = value;
    });
  }

  final _$initAsyncAction = AsyncAction('_LocationStoreBase.init');

  @override
  Future<void> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  final _$_onLocationChangedAsyncAction =
      AsyncAction('_LocationStoreBase._onLocationChanged');

  @override
  Future<void> _onLocationChanged() {
    return _$_onLocationChangedAsyncAction
        .run(() => super._onLocationChanged());
  }

  @override
  String toString() {
    return '''
currentLocation: ${currentLocation}
    ''';
  }
}
