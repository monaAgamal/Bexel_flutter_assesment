import 'package:bexel_assesment/features/home/presentation/ui_models/selectable_quantity_values.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  final List<SelectableQuantityValue> selectableItems;

  const CustomDropDown({
    super.key,
    required this.selectableItems,
  });

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  int? selectedValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DropdownButton<int>(
        hint: Text("Select"),
        items: widget.selectableItems
            .map((e) => DropdownMenuItem(
                  child: Text(e.label),
                  value: e.value,
                ))
            .toList(),
        value: selectedValue,
        onChanged: (currentValue) {
          setState(
            () => selectedValue = currentValue,
          );
        },
      ),
    );
  }
}
