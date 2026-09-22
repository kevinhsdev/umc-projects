import "Funcionario.dart";

class Gerente extends Funcionario {
  
  String _setor = "";

  Gerente(String nome, double salario, String setor) : super(nome, salario) {
    _setor = setor;
  }

  //Getters & Setters
  String get getSetor {
    return _setor;
  }

  set setSetor(String novoSetor) {
    if (novoSetor.trim().isEmpty) {
      throw ArgumentError("Setor está vazio!");
    }
    _setor = novoSetor;
  }
}