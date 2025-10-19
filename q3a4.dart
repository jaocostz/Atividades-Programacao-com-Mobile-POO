import 'q1a4.dart';

class Empregado extends Pessoa {
  int _codigoSetor;
  double _salarioBase;
  double _imposto;

  Empregado(String nome, String endereco, String telefone, 
           this._codigoSetor, this._salarioBase, this._imposto) 
      : super.completo(nome, endereco, telefone);

  int get codigoSetor => _codigoSetor;
  double get salarioBase => _salarioBase;
  double get imposto => _imposto;

  set codigoSetor(int codigo) => _codigoSetor = codigo;
  set salarioBase(double salario) => _salarioBase = salario;
  set imposto(double valor) => _imposto = valor;

  double calcularSalario() {
    return _salarioBase - (_salarioBase * _imposto / 100);
  }

  @override
  String toString() {
    return '${super.toString()}, setor: $_codigoSetor, salário base: $_salarioBase, impssto: $_imposto%, salário líquido: ${calcularSalario()}';
  }
}