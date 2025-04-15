import 'package:aprendendo_mobx/apresentation/stores/config_store.dart';
import 'package:aprendendo_mobx/apresentation/screens/list_screen.dart';
import 'package:aprendendo_mobx/apresentation/stores/list_store.dart';
import 'package:aprendendo_mobx/config/theme.dart';
import 'package:aprendendo_mobx/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'apresentation/screens/config_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ConfigStoreImpl configStore = ConfigStoreImpl();
    ListStoreImpl listStore = ListStoreImpl();

    return Observer(
      builder: (context) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: !configStore.temaEscuro
              ? ThemeData.dark(useMaterial3: true)
              : AppTheme.theme(),
          initialRoute: '/home',
          routes: {
            '/home': (context) => HomeScreen(configStore: configStore),
            '/list': (context) => ListScreen(configStore: configStore,),
            '/config': (context) => ConfigScreen(configStore: configStore),
          },
        );
      },
    );
  }
}
