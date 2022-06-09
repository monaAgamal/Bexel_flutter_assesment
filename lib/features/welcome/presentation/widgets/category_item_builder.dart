import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../routes/routes_names.dart ';

class CategoryItemBuilder extends StatelessWidget {
  final String imagePath;
  final String categoryLabel;

  const CategoryItemBuilder({
    super.key,
    required this.imagePath,
    required this.categoryLabel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(
        home,
        arguments: categoryLabel,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/svg/$imagePath.svg'),
          const SizedBox(height: 12),
          Text(
            categoryLabel,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  color: Colors.black,
                  fontSize: 16,
                ),
          ),
        ],
      ),
    );
  }
}
