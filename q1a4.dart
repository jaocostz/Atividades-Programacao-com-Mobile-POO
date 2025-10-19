class Pessoa {
  String _nome;
  String _endereco;
  String _telefone;

  Pessoa() : _nome = '', _endereco = '', _telefone = '';

  Pessoa.comNome(this._nome) : _endereco = '', _telefone = '';

  Pessoa.completo(this._nome, this._endereco, this._telefone);

  String get nome => _nome;
  String get endereco => _endereco;
  String get telefone => _telefone;

  set nome(String nome) => _nome = nome;
  set endereco(String endereco) => _endereco = endereco;
  set telefone(String telefone) => _telefone = telefone;

  @override
  String toString() {
    return 'nome: $_nome, endereço: $_endereco, telefone: $_telefone';
  }
}