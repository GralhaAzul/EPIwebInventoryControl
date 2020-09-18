import 'package:mobx/mobx.dart';
part 'dropdown_button_store.g.dart';

class DropdownButtonStore = DropdownButtonStoreBase with _$DropdownButtonStore;

abstract class DropdownButtonStoreBase with Store {
  @observable
  String dropdownValue;

  @action
  void setDropdownValue(value) => dropdownValue = value;
}
