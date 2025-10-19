import 'q1a4.dart';

class Fornecedor extends Pessoa {
  double _valorCredito;
  double _valorDivida;

  Fornecedor(String nome, String endereco, String telefone, 
            this._valorCredito, this._valorDivida) 
      : super.completo(nome, endereco, telefone);

  double get valorCredito => _valorCredito;
  double get valorDivida => _valorDivida;

  set valorCredito(double valor) => _valorCredito = valor;
  set valorDivida(double valor) => _valorDivida = valor;

  double obterSaldo() {
    return _valorCredito - _valorDivida;
  }

  @override
  String toString() {
    return '${super.toString()}, crédito: $_valorCredito, dívida: $_valorDivida, saldo: ${obterSaldo()}';
  }
}