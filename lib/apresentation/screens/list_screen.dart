import 'package:aprendendo_mobx/apresentation/stores/config_store.dart';
import 'package:aprendendo_mobx/apresentation/stores/list_store.dart';
import 'package:aprendendo_mobx/colors.dart';
import 'package:aprendendo_mobx/delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key, required this.configStore});

  final ConfigStoreImpl configStore;

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final ListStoreImpl listStore = ListStoreImpl();
  final controllerPage = PageController(
    initialPage: 1,
  );

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return Observer(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Container(
                color: ColorsConstants.midnightDreams,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/config');
                          },
                          icon: const Icon(
                            Icons.settings,
                          ),
                        ),
                        if(listStore.isButtonEnable)
                          IconButton(
                            onPressed: () {
                              showSearch(
                                context: context,
                                delegate: CustomSearchDelegate(
                                  listTask: listStore.todoList
                                      .map((e) => e.title)
                                      .toList(),
                                ),
                              );
                            },
                            icon: const Icon(
                              Icons.search,
                            ),
                          ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'LISTA DE TAREFAS',
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 32.0,
                        right: 32.0,
                        top: 16.0,
                        bottom: 8.0,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: const OutlineInputBorder(),
                          suffixIcon: listStore.isValid
                              ? IconButton(
                                  onPressed: () {
                                    listStore.addTodo();
                                    controller.clear();
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                  ),
                                )
                              : null,
                          prefixIcon: const Icon(
                            Icons.task,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 0.1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 0.1,
                            ),
                          ),
                        ),
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        onChanged: listStore.setNewTodoTitle,
                        enabled: true,
                        controller: controller,
                      ),
                    ),
                    Text(
                      'Quantidade de Tarefas: ${listStore.todoList.length}',
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                  ),
                  child: ListView.separated(
                    itemCount: listStore.todoList.length,
                    itemBuilder: (context, index) {
                      final todo = listStore.todoList[index];
                      return Observer(builder: (context) {
                        return ListTile(
                          title: todo.done
                              ? Text(
                            todo.title,
                            style: const TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey,
                            ),
                          )
                              : Text(
                            todo.title,
                          ),
                          subtitle: todo.done
                              ? Text(
                            ''
                                'Criado em: '
                                '${todo.currentDate.day}/'
                                '${todo.currentDate.month}/'
                                '${todo.currentDate.year} '
                                'ás ${todo.currentDate.hour}:'
                                '${todo.currentDate.minute}\n'
                                'Concluído em: '
                                '${todo.currentDateDone.day}/'
                                '${todo.currentDateDone.month}/'
                                '${todo.currentDateDone.year} '
                                'ás ${todo.currentDateDone.hour}:'
                                '${todo.currentDateDone.minute}',
                          )
                              : Text(
                            'Criado em: '
                                '${todo.currentDate.day}/'
                                '${todo.currentDate.month}/'
                                '${todo.currentDate.year} '
                                'ás ${todo.currentDate.hour}:'
                                '${todo.currentDate.minute}',
                          ),
                          onTap: todo.toggledDone,
                          leading: IconButton(
                            icon: Icon(
                              color: Colors.lightBlue,
                              todo.done
                                  ? Icons.check_box
                                  : Icons.check_box_outline_blank,
                            ),
                            onPressed: todo.toggledDone,
                          ),
                        );
                      },);
                    },
                    separatorBuilder: (context, index) => const Divider(),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
