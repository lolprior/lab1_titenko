import 'package:dart_lab1/dart_lab1.dart' as dart_lab1;
import 'dart:collection';

// Функція лямда, замикання параметри
// обовязкові не обовязкові іменовані не іменовані
// Конструктори іменовані, фабрики
// Списки ініціалізації
// Робота з колекціями

void main(List<String> arguments) {
  Auto a = Auto("Ford", 10, 200, [10000, 9000]);
  a.print_auto();
  // a = Auto.name('BMW');
  // a.print_auto();

  var Stage1 = mode(a.get_hp());
  a.set_hp(Stage1(2));
  a.print_auto();
  print(sum(a.get_hp(), 150));

  Queue coll = new Queue();
  coll.addAll([1, 2, 3, 12, 41, 213, 123]);
  for (int i = 0; i < coll.length; i++) {
    print(coll.take(i));
  }
}

class Auto {
  String name = '';
  int age = 0;
  int hp = 0;
  List price = [];

  Auto.name(this.name);

  int get_hp() {
    return hp;
  }

  void set_hp(int hp) {
    this.hp = hp;
  }

  Auto.hp(this.hp);

  Auto(name, [age, hp, price]) {
    this.name = name;
    this.age = age;
    this.hp = hp;
    this.price = price;
  }

  void print_auto() {
    print("Name - $name, age - $age years, hp - $hp, price - $price dollars");
  }
}

Function mode(num start) {
  return (num procent) => start * procent;
}

Function sum = (int a, int b) {
  print("Sum of $a and $b");
  return a + b;
};

class Car {
  String name;
  int hp;
  Car(this.name, this.hp);

  factory Car.createCar(String name, int hp) {
    if (hp > 500) {
      return Sportcar(name, hp);
    } else {
      return Familycar(name, hp);
    }
  }
}

class Sportcar extends Car {
  Sportcar(String name, int hp) : super(name, hp);
}

class Familycar extends Car {
  Familycar(String name, int hp) : super(name, hp);
}
