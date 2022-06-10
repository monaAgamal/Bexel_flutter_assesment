import 'package:bexel_assesment/features/home/presentation/ui_models/selectable_quantity_values.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  final List<DropdownMenuItem<SelectableQuantityValue>> selectableItems;

  const CustomDropDown({
    super.key,
    required this.selectableItems,
  });

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  SelectableQuantityValue? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<SelectableQuantityValue>(
      value: selectedValue,
      items: widget.selectableItems,
      onChanged: (currentValue) {
        setState(() => selectedValue = currentValue);
      },
    );
  }
}
