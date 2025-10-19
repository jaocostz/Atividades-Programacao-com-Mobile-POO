import 'q7a4.dart';

class Veterinario {
  void examinar(Animal animal) {
    print('Veterinário examinando $animal');
    animal.emitirSom();
  }
}