class Person {
  final String name;
  final int age;
  final double altura;
  final double peso;

  Person({
    required this.name,
    required this.age,
    required this.altura,
    required this.peso,
  });

  double get imc {
    var result = peso / (altura * altura);
    result = result * 100;
    return result.roundToDouble() / 100;
  }

  bool get isAdult => age >= 18;

  bool get isAposentar => age >= 65;


}
