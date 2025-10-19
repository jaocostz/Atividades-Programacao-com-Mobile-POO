import 'q7a4.dart';

class Zoologico {
  List<Animal?> jaulas = List<Animal?>.filled(10, null);

  void preencherJaulas() {
    jaulas[0] = Cachorro('Forasteiro', 3);
    jaulas[1] = Gato('Bucky', 2);
    jaulas[2] = Cavalo('Crina Negra', 5);
    jaulas[3] = Cachorro('Imperador', 4);
    jaulas[4] = Gato('Ashley', 1);
    jaulas[5] = Cavalo('Barão', 7);
    jaulas[6] = Cachorro('Valente', 2);
    jaulas[7] = Gato('Snow Ball', 3);
    jaulas[8] = Cavalo('Mosquito', 6);
    jaulas[9] = Cachorro('Scooby Doo', 4);
  }

  void percorrerJaulas() {
    for (int i = 0; i < jaulas.length; i++) {
      print('\nJaula ${i + 1}:');
      Animal? animal = jaulas[i];
      
      if (animal != null) {
        animal.emitirSom();
        
        if (animal is Cachorro) {
          animal.correr();
        } else if (animal is Gato) {
          animal.correr();
        } else if (animal is Cavalo) {
          animal.correr();
        }
      } else {
        print('jaula vazia');
      }
    }
  }
}