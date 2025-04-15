import 'package:mobx/mobx.dart';

import '../../domain/shared_preferences.dart';
part 'config_store.g.dart';

class ConfigStoreImpl  = ConfigStore with _$ConfigStoreImpl;

abstract class ConfigStore with Store{

  @observable
  bool temaEscuro = true;

  @action
  void setTemaEscuro(bool value) => temaEscuro = value = !temaEscuro;

  @action
  Future<void> setPreferenceTema() async {
    SharedPref preferences = SharedPref();
    preferences.save('temaEscuro', temaEscuro.toString());
  }
}