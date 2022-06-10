import 'package:flutter/material.dart';

class CreateProductForm extends StatelessWidget {
  final List<Widget> parsedWidgets;

  const CreateProductForm({
    super.key,
    required this.parsedWidgets,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: parsedWidgets,
    );
  }
}
