import 'package:bexel_assesment/core/enums/form_widget_enum.dart';
import 'package:bexel_assesment/features/home/domain/entities/input_form_field.dart';
import 'package:bexel_assesment/features/home/presentation/input_field_to_widget_factory/input_field_to_widget_factory.dart';
import 'package:bexel_assesment/features/home/presentation/widgets/custom_form_widget.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:injectable/injectable.dart';

@Singleton(as:InputFieldToWidgetFactory)
class InputFieldToWidgetFactoryImpl implements InputFieldToWidgetFactory {

  @override
  Widget inputToWidget( InputFormFieldEntity inputFormFieldEntity ) {
    final String type = inputFormFieldEntity.type ;
    if (type == FormWidgetEnum.file.name) {
      return Container();
    }
    if (type == FormWidgetEnum.text.name) {
      return CustomFormWidget(
        widget: TextFormField(
          validator: (input) {
            if (input == null) {
              return "This Field is required";
            }
            if (input != null && RegExp(r'^[a-z]+$').hasMatch(input)) {
              return "only letters is allowed";
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: inputFormFieldEntity.label,
          ),
        ),
        label: inputFormFieldEntity.label,
        validation: inputFormFieldEntity.validation,
      );
    }
    if (type == FormWidgetEnum.textarea.name) {
      return CustomFormWidget(
        widget: TextFormField(
          validator: (input) {
            if (input != null && input.length > 200) {
              return "Can't exceed 200 Chars";
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: inputFormFieldEntity.name,
          ),
        ),
        label: inputFormFieldEntity.label,
        validation: inputFormFieldEntity.validation,
      );
    }
    if (type == FormWidgetEnum.select.name) {
      return CustomFormWidget(
        widget: TextFormField(
          validator: (input) {
            if (input != null && input.length > 200) {
              return "Can't exceed 200 Chars";
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: inputFormFieldEntity.name,
          ),
        ),
        label: inputFormFieldEntity.label,
        validation: inputFormFieldEntity.validation,
      );
    }
    if (type == FormWidgetEnum.radioGroup.name) {
      String groupValue = '';
      return CustomFormWidget(
        widget: Row(
          children: [
            Text(inputFormFieldEntity.values!.last.label),
            Radio(
              value: inputFormFieldEntity.values!.first.value!,
              groupValue: groupValue,
              onChanged: (val) {
                groupValue = inputFormFieldEntity.values!.first.value!;
              },
            ),
            const SizedBox(width: 12),
            Text(inputFormFieldEntity.values!.last.label),
            Radio(
              value: inputFormFieldEntity.values!.last,
              groupValue: groupValue,
              onChanged: (val) {
                groupValue = inputFormFieldEntity.values!.last.value!;
              },
            ),
          ],
        ),
        label: inputFormFieldEntity.label,
        validation: inputFormFieldEntity.validation,
      );
    }
    return Container();
  }
}
