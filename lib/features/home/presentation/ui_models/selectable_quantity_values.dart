import 'package:equatable/equatable.dart';

class SelectableQuantityValue extends Equatable {
  final String label;
  final int value;

  const SelectableQuantityValue({required this.label, required this.value});

  @override
  List<Object?> get props => [label, value];
}
