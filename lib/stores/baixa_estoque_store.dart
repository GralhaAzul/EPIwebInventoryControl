import 'package:mobx/mobx.dart';
part 'baixa_estoque_store.g.dart';

class BaixaEstoqueStore = _BaixaEstoqueStoreBase with _$BaixaEstoqueStore;

abstract class _BaixaEstoqueStoreBase with Store {
  @observable
  List<String> empresas;
  List<String> filiais;
  List<String> locaisEstoque;

  @observable
  String selectedEmpresa;
  String selectedFilial;
  String selectedLocalEstoque;

  @action
  void setEmpresa(value) => selectedEmpresa = value;
  void setFilial(value) => selectedFilial = value;
  void setLocalEstoque(value) => selectedLocalEstoque = value;
}
