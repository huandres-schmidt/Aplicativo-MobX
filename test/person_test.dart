import 'package:aprendendo_mobx/person.dart';
import 'package:test/test.dart';

void main(){
  late Person person;

  setUp(() {
    person = Person(name: 'Huandres', age: 18, altura: 1.85, peso: 87);
  });

  test('Imc deve ser 25.42', () {
    expect(person.imc, 25.42);
  });

  group('IsOlder | ', () {
    test('Ele deve ser maior de idade', () {
      expect(person.isAdult, true);
    });

    test('Ele deve ser menor de idade', () {
      person = Person(name: 'Huandres', age: 17, altura: 1.85, peso: 87);
      expect(person.isAdult, false);
    });

    test('Ele deve conseguir de aposentar', () {
      person = Person(name: 'Huandres', age: 64, altura: 1.85, peso: 87);
      expect(person.isAposentar, false);
    });
  });

}