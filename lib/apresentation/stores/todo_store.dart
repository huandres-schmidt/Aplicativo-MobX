import 'package:mobx/mobx.dart';
part 'todo_store.g.dart';

class TodoStoreImpl = TodoStore with _$TodoStoreImpl;

abstract class TodoStore with Store{

  TodoStore(this.title);

  final String title;

  @observable
  bool done = false;

  @observable
  DateTime currentDateDone = DateTime.now();

  @observable
  DateTime currentDate = DateTime.now();

  @action
  void toggledDone () {
    done = !done;
    currentDateDone = DateTime.now();
  }
}