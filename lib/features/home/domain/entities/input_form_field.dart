import 'package:bexel_assesment/features/home/domain/entities/input_field_value.dart';
import 'package:bexel_assesment/features/home/domain/entities/input_form_validation.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
class InputFormFieldEntity extends Equatable {
  final String type;
  final String? name;
  final String label;
  final InputFormValidation validation;
  final bool? multiple;
  final List<InputFieldValue>? values;
  final String? className;

  const InputFormFieldEntity({
    required this.type,
    required this.name,
    required this.label,
    required this.validation,
    this.multiple,
    this.values,
    this.className,
  });

  @override
  List<Object?> get props => [
        type,
        name,
        label,
        validation,
        multiple,
        values,
        className,
      ];
}
