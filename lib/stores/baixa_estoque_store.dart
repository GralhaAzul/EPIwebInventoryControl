import 'package:mobx/mobx.dart';
part 'baixa_estoque_store.g.dart';

class BaixaEstoqueStore = _BaixaEstoqueStoreBase with _$BaixaEstoqueStore;

abstract class _BaixaEstoqueStoreBase with Store {
  @observable
  List<String> empresas = ['Solar Móveis', 'Mobler', 'Prolar'];
  List<String> filiais;
  List<String> locaisEstoque;
  bool ativFilial = false;
  bool ativEstoque = false;

  @observable
  String selectedEmpresa;
  String selectedFilial;
  String selectedLocalEstoque;

  @action
  void setEmpresa(value) => selectedEmpresa = value;
  void setFilial(value) => selectedFilial = value;
  void setLocalEstoque(value) => selectedLocalEstoque = value;

  @computed
  List<String> get empresaSelected =>
      selectedEmpresa != '' ? _reloadFilials : [];

  List<String> _reloadFilials() {
    List<String> filiaisLoaded;
    ativFilial = true;
    return filiaisLoaded;
  }
}
