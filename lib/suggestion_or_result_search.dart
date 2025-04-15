import 'package:aprendendo_mobx/screen_task.dart';
import 'package:flutter/material.dart';

class SuggestionOrResultSearch extends StatelessWidget {
  const SuggestionOrResultSearch({
    super.key,
    required this.query,
    required this.listTask,
  });

  final List<String> listTask;
  final String query;

  @override
  Widget build(BuildContext context) {
    final List<String> suggestion = query.isEmpty
        ? listTask
        : listTask
            .where((element) =>
                element.toLowerCase().contains(query.toLowerCase()))
            .toList();

    if (suggestion.isEmpty) {
      return const Center(
        child: Text('Nenhum resultado encontrado'),
      );
    }

    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      itemCount: suggestion.length,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScreenTask(
                task: suggestion[index],
              ),
            ),
          );
        },
        child: ListTile(
          title: Text(suggestion[index]),
        ),
      ),
    );
  }
}
