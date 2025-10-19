import 'q3a4.dart';

class Administrador extends Empregado {
  double _ajudaDeCusto;

  Administrador(String nome, String endereco, String telefone, 
               int codigoSetor, double salarioBase, double imposto, 
               this._ajudaDeCusto) 
      : super(nome, endereco, telefone, codigoSetor, salarioBase, imposto);

  double get ajudaDeCusto => _ajudaDeCusto;

  set ajudaDeCusto(double ajuda) => _ajudaDeCusto = ajuda;

  @override
  double calcularSalario() {
    return super.calcularSalario() + _ajudaDeCusto;
  }

  @override
  String toString() {
    return '${super.toString()}, ajuda de custo: $_ajudaDeCusto, salário total: ${calcularSalario()}';
  }
}