import 'q1a4.dart';
import 'q2a4.dart';
import 'q3a4.dart';
import 'q4a4.dart';
import 'q5a4.dart';
import 'q6a4.dart';
import 'q7a4.dart';
import 'q8a4.dart';
import 'q9a4.dart';

void main() {
  print('- - - - - p e s s o a - - - - -');
  Pessoa pessoa1 = Pessoa.completo('joão francisco', 'Rua dos Pássaros, 321', '88999999999');
  print(pessoa1);

  print('\n- - - - - f o r n e c e d o r - - - - -');
  Fornecedor fornecedor = Fornecedor('whiskas', 'Vila Bela, 123', '85888888888', 10000, 3500);
  print(fornecedor);
  print('Saldo do fornecedor: ${fornecedor.obterSaldo()}');

  print('\n- - - - - e m p r e g a d o - - - - -');
  Empregado empregado = Empregado('Joabe Lima', 'Rua C, 001', '85777777777', 1, 3000, 15);
  print(empregado);

  print('\n- - - - - a d m i n i s t r a d o r - - - - -');
  Administrador admin = Administrador('Alex Rocha', 'Beco do Gritador, 405', '85666666666', 2, 5000, 20, 800);
  print(admin);

  print('\n- - - - - o p e r a r i o - - - - -');
  Operario operario = Operario('William Bezerra', 'Rua E, 236', '85555555555', 3, 2500, 10, 5000, 5);
  print(operario);

  print('\n- - - - - v e n d e d o r - - - - -');
  Vendedor vendedor = Vendedor('Victoria Francesa', 'Rua F, 843', '88444444444', 4, 2800, 12, 10000, 3);
  print(vendedor);

  print('\n- - - - - a n i m a i s - - - - -');
  Animal cachorro = Cachorro('Forasteiro', 3);
  Animal gato = Gato('Bucky', 2);
  Animal cavalo = Cavalo('Crina Negra', 5);

  List<Animal> animais = [cachorro, gato, cavalo];
  
  for (Animal animal in animais) {
    animal.emitirSom();
  }

  print('\n- - - - - v e t e r i na r i o - - - - -');
  Veterinario vet = Veterinario();
  for (Animal animal in animais) {
    vet.examinar(animal);
  }

  print('\n- - - - - z o o l o g i c o - - - - -');
  Zoologico zoo = Zoologico();
  zoo.preencherJaulas();
  zoo.percorrerJaulas();
}