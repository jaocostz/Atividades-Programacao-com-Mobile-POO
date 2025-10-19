import 'q3a4.dart';

class Vendedor extends Empregado {
  double _valorVendas;
  double _comissao;

  Vendedor(String nome, String endereco, String telefone, 
          int codigoSetor, double salarioBase, double imposto, 
          this._valorVendas, this._comissao) 
      : super(nome, endereco, telefone, codigoSetor, salarioBase, imposto);

  double get valorVendas => _valorVendas;
  double get comissao => _comissao;

  set valorVendas(double valor) => _valorVendas = valor;
  set comissao(double valor) => _comissao = valor;

  @override
  double calcularSalario() {
    double comissaoValor = _valorVendas * (_comissao / 100);
    return super.calcularSalario() + comissaoValor;
  }

  @override
  String toString() {
    return '${super.toString()}, valor vendas: $_valorVendas, comissao: $_comissao%, salario total: ${calcularSalario()}';
  }
}