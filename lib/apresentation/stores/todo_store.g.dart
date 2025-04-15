// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TodoStoreImpl on TodoStore, Store {
  late final _$doneAtom = Atom(name: 'TodoStore.done', context: context);

  @override
  bool get done {
    _$doneAtom.reportRead();
    return super.done;
  }

  @override
  set done(bool value) {
    _$doneAtom.reportWrite(value, super.done, () {
      super.done = value;
    });
  }

  late final _$currentDateDoneAtom =
      Atom(name: 'TodoStore.currentDateDone', context: context);

  @override
  DateTime get currentDateDone {
    _$currentDateDoneAtom.reportRead();
    return super.currentDateDone;
  }

  @override
  set currentDateDone(DateTime value) {
    _$currentDateDoneAtom.reportWrite(value, super.currentDateDone, () {
      super.currentDateDone = value;
    });
  }

  late final _$currentDateAtom =
      Atom(name: 'TodoStore.currentDate', context: context);

  @override
  DateTime get currentDate {
    _$currentDateAtom.reportRead();
    return super.currentDate;
  }

  @override
  set currentDate(DateTime value) {
    _$currentDateAtom.reportWrite(value, super.currentDate, () {
      super.currentDate = value;
    });
  }

  late final _$TodoStoreActionController =
      ActionController(name: 'TodoStore', context: context);

  @override
  void toggledDone() {
    final _$actionInfo =
        _$TodoStoreActionController.startAction(name: 'TodoStore.toggledDone');
    try {
      return super.toggledDone();
    } finally {
      _$TodoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
done: ${done},
currentDateDone: ${currentDateDone},
currentDate: ${currentDate}
    ''';
  }
}
