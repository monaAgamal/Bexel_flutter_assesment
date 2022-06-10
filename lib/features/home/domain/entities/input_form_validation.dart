import 'package:equatable/equatable.dart';

class InputFormValidation extends Equatable {
  final bool isRequired;
  final String? accept;
  final int? maxlength;
  final String? dateFormat;

  const InputFormValidation({
    required this.isRequired,
    this.accept,
    this.maxlength,
    this.dateFormat,
  });

  @override
  List<Object?> get props => [
        isRequired,
        accept,
        maxlength,
        dateFormat,
      ];
}
