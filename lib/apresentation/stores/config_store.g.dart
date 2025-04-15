// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ConfigStoreImpl on ConfigStore, Store {
  late final _$temaEscuroAtom =
      Atom(name: 'ConfigStore.temaEscuro', context: context);

  @override
  bool get temaEscuro {
    _$temaEscuroAtom.reportRead();
    return super.temaEscuro;
  }

  @override
  set temaEscuro(bool value) {
    _$temaEscuroAtom.reportWrite(value, super.temaEscuro, () {
      super.temaEscuro = value;
    });
  }

  late final _$setPreferenceTemaAsyncAction =
      AsyncAction('ConfigStore.setPreferenceTema', context: context);

  @override
  Future<void> setPreferenceTema() {
    return _$setPreferenceTemaAsyncAction.run(() => super.setPreferenceTema());
  }

  late final _$ConfigStoreActionController =
      ActionController(name: 'ConfigStore', context: context);

  @override
  void setTemaEscuro(bool value) {
    final _$actionInfo = _$ConfigStoreActionController.startAction(
        name: 'ConfigStore.setTemaEscuro');
    try {
      return super.setTemaEscuro(value);
    } finally {
      _$ConfigStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
temaEscuro: ${temaEscuro}
    ''';
  }
}
