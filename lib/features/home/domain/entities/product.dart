import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;

  final String details;

  final String imagePath;

  const Product({
    required this.name,
    required this.details,
    required this.imagePath,
  });

  @override
  List<Object?> get props => [name, details, imagePath];
}
