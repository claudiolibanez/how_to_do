// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStoreBase, Store {
  final _$addressAtom = Atom(name: '_HomeStoreBase.address');

  @override
  String get address {
    _$addressAtom.reportRead();
    return super.address;
  }

  @override
  set address(String value) {
    _$addressAtom.reportWrite(value, super.address, () {
      super.address = value;
    });
  }

  final _$errorAddressAtom = Atom(name: '_HomeStoreBase.errorAddress');

  @override
  String? get errorAddress {
    _$errorAddressAtom.reportRead();
    return super.errorAddress;
  }

  @override
  set errorAddress(String? value) {
    _$errorAddressAtom.reportWrite(value, super.errorAddress, () {
      super.errorAddress = value;
    });
  }

  final _$predictionsAtom = Atom(name: '_HomeStoreBase.predictions');

  @override
  ObservableList<PredictionModel> get predictions {
    _$predictionsAtom.reportRead();
    return super.predictions;
  }

  @override
  set predictions(ObservableList<PredictionModel> value) {
    _$predictionsAtom.reportWrite(value, super.predictions, () {
      super.predictions = value;
    });
  }

  final _$_getPlacesAsyncAction = AsyncAction('_HomeStoreBase._getPlaces');

  @override
  Future<List<PredictionModel>> _getPlaces(String value) {
    return _$_getPlacesAsyncAction.run(() => super._getPlaces(value));
  }

  final _$getPlacesAsyncAction = AsyncAction('_HomeStoreBase.getPlaces');

  @override
  Future<void> getPlaces(String value) {
    return _$getPlacesAsyncAction.run(() => super.getPlaces(value));
  }

  final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase');

  @override
  void setAddress(String value) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.setAddress');
    try {
      return super.setAddress(value);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setErrorAddress(String value) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.setErrorAddress');
    try {
      return super.setErrorAddress(value);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
address: ${address},
errorAddress: ${errorAddress},
predictions: ${predictions}
    ''';
  }
}
