abstract class Animal {
  String _nome;
  int _idade;

  Animal(this._nome, this._idade);

  String get nome => _nome;
  int get idade => _idade;

  set nome(String nome) => _nome = nome;
  set idade(int idade) => _idade = idade;

  void emitirSom();
  
  @override
  String toString() {
    return '$_nome ($_idade anos)';
  }
}

class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, idade);

  @override
  void emitirSom() {
    print('$nome: auau!');
  }

  void correr() {
    print('$nome está correndo');
  }
}

class Gato extends Animal {
  Gato(String nome, int idade) : super(nome, idade);

  @override
  void emitirSom() {
    print('$nome: meow~');
  }

  void correr() {
    print('$nome está correndo');
  }
}

class Cavalo extends Animal {
  Cavalo(String nome, int idade) : super(nome, idade);

  @override
  void emitirSom() {
    print('$nome: rinrinrinrinrin!');
  }

  void correr() {
    print('$nome está galopando');
  }
}