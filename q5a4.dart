import 'q3a4.dart';

class Operario extends Empregado {
  double _valorProducao;
  double _comissao;

  Operario(String nome, String endereco, String telefone, 
          int codigoSetor, double salarioBase, double imposto, 
          this._valorProducao, this._comissao) 
      : super(nome, endereco, telefone, codigoSetor, salarioBase, imposto);

  double get valorProducao => _valorProducao;
  double get comissao => _comissao;

  set valorProducao(double valor) => _valorProducao = valor;
  set comissao(double valor) => _comissao = valor;

  @override
  double calcularSalario() {
    double comissaoValor = _valorProducao * (_comissao / 100);
    return super.calcularSalario() + comissaoValor;
  }

  @override
  String toString() {
    return '${super.toString()}, valor produção: $_valorProducao, comissão: $_comissao%, salário total: ${calcularSalario()}';
  }
}