import 'package:equatable/equatable.dart';

class CategoryItems extends Equatable {
  final String categoryIcon;
  final String categoryName;

  const CategoryItems({
    required this.categoryIcon,
    required this.categoryName,
  });

  @override
  List<Object?> get props => [
        categoryIcon,
        categoryName,
      ];
}
