import 'Funcionario.dart';

class Vendedor extends Funcionario{

  double _metaVendas = 0;

  Vendedor(String nome, double salario, double metaVendas) : super(nome, salario){
    _metaVendas = metaVendas;
  }

  //Getters & Setters 
  double get getMetaVendas{
    return _metaVendas;
  }

  set setMetaVendas(double novaMetaVendas){
    if (novaMetaVendas < 0){
      throw ArgumentError("Meta não pode ser menor que 0!");
    }
    _metaVendas = novaMetaVendas;
  }

  @override
  String exibirInformacoes(){
    return super.exibirInformacoes() + ", Meta: $_metaVendas";
  }

}