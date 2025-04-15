import 'package:aprendendo_mobx/apresentation/stores/todo_store.dart';
import 'package:mobx/mobx.dart';

part 'list_store.g.dart';

class ListStoreImpl = ListStore with _$ListStoreImpl;

abstract class ListStore with Store{

  @observable
  String newTodoTitle = '';

  @observable
  bool buttonSearch = false;

  ObservableList<TodoStore> todoList = ObservableList<TodoStore>();

  @action
  void setNewTodoTitle(String value) => newTodoTitle = value;

  @action
  void addTodo(){
    todoList.insert(0, TodoStoreImpl(newTodoTitle));
    newTodoTitle = '';
  }

  @computed
  bool get isValid => newTodoTitle.isNotEmpty;

  @computed
  bool get isButtonEnable => todoList.isNotEmpty;
}