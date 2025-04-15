import 'package:aprendendo_mobx/apresentation/stores/config_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ConfigScreen extends StatelessWidget{
  const ConfigScreen({
    super.key,
    required this.configStore,
  });

  final ConfigStoreImpl configStore;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.lightBlue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: width * 0.25),
                  child: const Text('CONFIGURAÇÕES'),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
            child: Observer(
              builder: (context) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        configStore.temaEscuro
                            ? const Icon(Icons.dark_mode)
                            : const Icon(Icons.light_mode,
                          color: Colors.yellow,
                        ),
                        const SizedBox(width: 8),
                        configStore.temaEscuro
                            ? const Text('Ativar tema claro')
                            : const Text('Ativar tema escuro'),
                      ],
                    ),
                    Switch(
                      activeColor: Colors.lightBlue,
                      value: configStore.temaEscuro,
                      onChanged: (value) {
                        configStore.setTemaEscuro(value);
                        configStore.setPreferenceTema();
                      },
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}