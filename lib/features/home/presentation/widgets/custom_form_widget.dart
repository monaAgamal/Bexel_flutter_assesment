import 'package:bexel_assesment/features/home/domain/entities/input_form_validation.dart';
import 'package:flutter/material.dart';

class CustomFormWidget extends StatelessWidget {
  final Widget widget;

  final String label;

  final InputFormValidation validation;

  const CustomFormWidget(
      {Key? key,
      required this.widget,
      required this.label,
      required this.validation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 12),
        widget,
        const SizedBox(height: 12),
      ],
    );
  }
}
