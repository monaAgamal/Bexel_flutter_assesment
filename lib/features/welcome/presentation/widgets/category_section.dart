import 'package:bexel_assesment/features/welcome/presentation/widgets/category_item_builder.dart';
import 'package:flutter/material.dart';
import 'package:bexel_assesment/features/welcome/presentation/widgets/category_section_background_painter.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CategorySectionBackgroundPainter(),
      child: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: Column(
          children: [
            const SizedBox(height: 24),
            Center(
              child: Text(
                "Choose your category",
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      color: Colors.black,
                      fontSize: 18,
                    ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CategoryItemBuilder(
                  imagePath: "medicines",
                  categoryLabel: "medicines",
                ),
                CategoryItemBuilder(
                  imagePath: "hot-food",
                  categoryLabel: "Food",
                ),
                CategoryItemBuilder(
                  categoryLabel: "Donate",
                  imagePath: "giving",
                ),
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
