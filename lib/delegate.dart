import 'package:aprendendo_mobx/suggestion_or_result_search.dart';
import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  CustomSearchDelegate({
    required this.listTask,
  });

  final List<String> listTask;

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      // Customize appbar theme
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
      ),
      // Customize input decoration theme
      inputDecorationTheme: const InputDecorationTheme(
        isDense: true,
        isCollapsed: true,
        contentPadding: EdgeInsets.only(left: 12, top: 6, bottom: 6),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.cleaning_services_outlined),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => close(context, []),
      icon: const Icon(
        Icons.close,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return SuggestionOrResultSearch(query: query, listTask: listTask);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return SuggestionOrResultSearch(query: query, listTask: listTask);
  }
}
