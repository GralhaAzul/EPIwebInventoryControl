// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baixa_estoque_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BaixaEstoqueStore on _BaixaEstoqueStoreBase, Store {
  Computed<List<String>> _$empresaSelectedComputed;

  @override
  List<String> get empresaSelected => (_$empresaSelectedComputed ??=
          Computed<List<String>>(() => super.empresaSelected,
              name: '_BaixaEstoqueStoreBase.empresaSelected'))
      .value;

  final _$empresasAtom = Atom(name: '_BaixaEstoqueStoreBase.empresas');

  @override
  List<String> get empresas {
    _$empresasAtom.reportRead();
    return super.empresas;
  }

  @override
  set empresas(List<String> value) {
    _$empresasAtom.reportWrite(value, super.empresas, () {
      super.empresas = value;
    });
  }

  final _$selectedEmpresaAtom =
      Atom(name: '_BaixaEstoqueStoreBase.selectedEmpresa');

  @override
  String get selectedEmpresa {
    _$selectedEmpresaAtom.reportRead();
    return super.selectedEmpresa;
  }

  @override
  set selectedEmpresa(String value) {
    _$selectedEmpresaAtom.reportWrite(value, super.selectedEmpresa, () {
      super.selectedEmpresa = value;
    });
  }

  final _$_BaixaEstoqueStoreBaseActionController =
      ActionController(name: '_BaixaEstoqueStoreBase');

  @override
  void setEmpresa(dynamic value) {
    final _$actionInfo = _$_BaixaEstoqueStoreBaseActionController.startAction(
        name: '_BaixaEstoqueStoreBase.setEmpresa');
    try {
      return super.setEmpresa(value);
    } finally {
      _$_BaixaEstoqueStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
empresas: ${empresas},
selectedEmpresa: ${selectedEmpresa},
empresaSelected: ${empresaSelected}
    ''';
  }
}
