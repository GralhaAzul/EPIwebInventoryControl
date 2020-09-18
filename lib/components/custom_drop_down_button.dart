import 'package:flutter/material.dart';
import 'package:EPIwebInventoryControl/stores/dropdown_button_store.dart';

class CustomDropdownButton extends StatelessWidget {
  CustomDropdownButton({
    this.initialMessage,
    this.valuesToDropdown,
  });
  final DropdownButtonStore dropdownBtnStore = DropdownButtonStore();
  final List<DropdownMenuItem> valuesToDropdown;
  final String initialMessage;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      isExpanded: true,
      value: dropdownBtnStore.dropdownValue != null
          ? dropdownBtnStore.dropdownValue
          : initialMessage,
      elevation: 16,
      style: TextStyle(color: Colors.indigo),
      underline: Container(
        height: 2,
        color: Colors.indigo,
      ),
      onChanged: (var newValue) {
        dropdownBtnStore.setDropdownValue(newValue);
      },
      items: [
        DropdownMenuItem(
          value: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.grade,
                size: 20,
                color: Colors.indigo,
              ),
              Text('Teste'),
            ],
          ),
        )
      ],
    );
  }
}

/*
_CustomDropDownButtonState({
    this.initialMessage,
    this.valuesToDropdown,
  });
  final DropdownButtonStore dropdownBtnStore = DropdownButtonStore();
  final List<DropdownMenuItem> valuesToDropdown;
  final String initialMessage;
*/

/*
DropdownButton(
      isExpanded: true,
      value: dropdownBtnStore.dropdownValue != null
          ? dropdownBtnStore.dropdownValue
          : initialMessage,
      elevation: 16,
      style: TextStyle(color: Colors.indigo),
      underline: Container(
        height: 2,
        color: Colors.indigo,
      ),
      onChanged: (String newValue) {
        dropdownBtnStore.setDropdownValue(newValue);
      },
      items: [
        DropdownMenuItem<String>(
          value: 'Teste',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.grade,
                size: 20,
                color: Colors.indigo,
              ),
              Text('Teste'),
            ],
          ),
        )
      ],
    );
*/

/*
class CustomDropDownButton extends StatelessWidget {
  CustomDropDownButton({this.valuesToDropdown, this.initialMessage});
  final DropdownButtonStore dropdownBtnStore = DropdownButtonStore();
  final List<DropdownMenuItem> valuesToDropdown;
  final String initialMessage;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return DropdownButton(
          isExpanded: true,
          value: dropdownBtnStore.dropdownValue != null
              ? dropdownBtnStore.dropdownValue
              : initialMessage,
          elevation: 16,
          style: TextStyle(color: Colors.indigo),
          underline: Container(
            height: 2,
            color: Colors.indigo,
          ),
          onChanged: (String newValue) {
            dropdownBtnStore.setDropdownValue(newValue);
          },
          items: [
            DropdownMenuItem<String>(
              value: 'Teste',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.grade,
                    size: 20,
                    color: Colors.indigo,
                  ),
                  Text('Teste'),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
*/
