// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ListStoreImpl on ListStore, Store {
  Computed<bool>? _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??=
          Computed<bool>(() => super.isValid, name: 'ListStore.isValid'))
      .value;
  Computed<bool>? _$isButtonEnableComputed;

  @override
  bool get isButtonEnable =>
      (_$isButtonEnableComputed ??= Computed<bool>(() => super.isButtonEnable,
              name: 'ListStore.isButtonEnable'))
          .value;

  late final _$newTodoTitleAtom =
      Atom(name: 'ListStore.newTodoTitle', context: context);

  @override
  String get newTodoTitle {
    _$newTodoTitleAtom.reportRead();
    return super.newTodoTitle;
  }

  @override
  set newTodoTitle(String value) {
    _$newTodoTitleAtom.reportWrite(value, super.newTodoTitle, () {
      super.newTodoTitle = value;
    });
  }

  late final _$buttonSearchAtom =
      Atom(name: 'ListStore.buttonSearch', context: context);

  @override
  bool get buttonSearch {
    _$buttonSearchAtom.reportRead();
    return super.buttonSearch;
  }

  @override
  set buttonSearch(bool value) {
    _$buttonSearchAtom.reportWrite(value, super.buttonSearch, () {
      super.buttonSearch = value;
    });
  }

  late final _$ListStoreActionController =
      ActionController(name: 'ListStore', context: context);

  @override
  void setNewTodoTitle(String value) {
    final _$actionInfo = _$ListStoreActionController.startAction(
        name: 'ListStore.setNewTodoTitle');
    try {
      return super.setNewTodoTitle(value);
    } finally {
      _$ListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTodo() {
    final _$actionInfo =
        _$ListStoreActionController.startAction(name: 'ListStore.addTodo');
    try {
      return super.addTodo();
    } finally {
      _$ListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
newTodoTitle: ${newTodoTitle},
buttonSearch: ${buttonSearch},
isValid: ${isValid},
isButtonEnable: ${isButtonEnable}
    ''';
  }
}
