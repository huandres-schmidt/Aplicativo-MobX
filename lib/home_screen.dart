import 'package:aprendendo_mobx/apresentation/screens/config_screen.dart';
import 'package:aprendendo_mobx/apresentation/screens/list_screen.dart';
import 'package:aprendendo_mobx/screen_task.dart';
import 'package:flutter/material.dart';

import 'apresentation/stores/config_store.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({
    super.key,
    required this.configStore,
  });

  final ConfigStoreImpl configStore;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int paginaAtual = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: paginaAtual);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          ListScreen(configStore: widget.configStore),
          ConfigScreen(configStore: widget.configStore),
        ],
      ),
    );
  }
}
