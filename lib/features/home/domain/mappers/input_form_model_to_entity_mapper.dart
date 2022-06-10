import 'package:bexel_assesment/features/home/data/models/input_form.dart'
    as model;
import 'package:bexel_assesment/features/home/domain/entities/input_field_value.dart';
import 'package:bexel_assesment/features/home/domain/entities/input_form_field.dart';
import 'package:bexel_assesment/features/home/domain/entities/input_form_validation.dart';

extension InputFormModelToDomainMapper on model.InputFormField {
  InputFormFieldEntity toDomain() {
    return InputFormFieldEntity(
      name: name,
      label: label,
      type: type,
      validation: validationToDomain(),
      className: className,
      multiple: multiple,
      values: modelValues?.map((e) => e.inputValueToDomain()).toList()
          as List<InputFieldValue>?,
    );
  }
}

extension InputFormValidationToDomainMapper on model.InputFormField {
  InputFormValidation validationToDomain() {
    return InputFormValidation(
      isRequired: validation.required,
      accept: validation.accept,
      dateFormat: validation.dateFormat,
      maxlength: validation.maxlength,
    );
  }
}

extension InputFormValueToDomainMapper on model.Value {
  InputFieldValue inputValueToDomain() {
    return InputFieldValue(
      label: label ?? "label",
      selected: selected,
      value: value,
    );
  }
}
