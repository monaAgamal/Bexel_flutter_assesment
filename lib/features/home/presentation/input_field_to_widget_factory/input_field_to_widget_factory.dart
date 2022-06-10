import 'package:bexel_assesment/features/home/domain/entities/input_form_field.dart';
import 'package:flutter/material.dart';

abstract class InputFieldToWidgetFactory {
  Widget inputToWidget(InputFormFieldEntity inputFormFieldEntity);
}
