// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dropdown_button_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DropdownButtonStore on DropdownButtonStoreBase, Store {
  final _$dropdownValueAtom =
      Atom(name: 'DropdownButtonStoreBase.dropdownValue');

  @override
  String get dropdownValue {
    _$dropdownValueAtom.reportRead();
    return super.dropdownValue;
  }

  @override
  set dropdownValue(String value) {
    _$dropdownValueAtom.reportWrite(value, super.dropdownValue, () {
      super.dropdownValue = value;
    });
  }

  final _$DropdownButtonStoreBaseActionController =
      ActionController(name: 'DropdownButtonStoreBase');

  @override
  void setDropdownValue(dynamic value) {
    final _$actionInfo = _$DropdownButtonStoreBaseActionController.startAction(
        name: 'DropdownButtonStoreBase.setDropdownValue');
    try {
      return super.setDropdownValue(value);
    } finally {
      _$DropdownButtonStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dropdownValue: ${dropdownValue}
    ''';
  }
}
