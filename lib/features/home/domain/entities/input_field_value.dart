import 'package:equatable/equatable.dart';

class InputFieldValue extends Equatable {
  final String label;
  final String? value;
  final bool? selected;

  const InputFieldValue({
    required this.label,
    this.value,
    this.selected,
  });

  @override
  List<Object?> get props => [
        label,
        value,
        selected,
      ];
}
