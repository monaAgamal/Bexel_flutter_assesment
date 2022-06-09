import 'package:bexel_assesment/features/home/presentation/ui_models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:bexel_assesment/core/app_theme/app_colors_palate.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  final String categoryName;

  const HomePage({Key? key, required this.categoryName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Body(
        categoryName: categoryName,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final String categoryName;

  const _Body({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            child: _PlanSelection(
              categoryName: categoryName,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "Our Features",
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            fontSize: 22,
                            color: Theme.of(context).primaryColor,
                          ),
                    ),
                  ),
                  FeaturesSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PlanSelection extends StatelessWidget {
  final String categoryName;

  const _PlanSelection({
    super.key,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Stack(
        children: [
          Container(
            height: constraints.maxHeight * 0.75,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
          ),
          Positioned(
            top: 34,
            left: 16,
            right: 16,
            child: Column(
              children: [
                _CustomAppBar(
                  categoryName: categoryName,
                ),
                const SizedBox(height: 24),
                Text(
                  "Select your plan and enjoy a warm lunch or dinner at your home.",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        // fontWeight: FontWeight.w200,
                        height: 1.5,
                        fontSize: 18,
                      ),
                ),
              ],
            ),
          ),
          const Positioned(
            left: 12,
            right: 12,
            bottom: 0,
            child: _PlansOptions(),
          ),
        ],
      ),
    );
  }
}

class _PlansOptions extends StatelessWidget {
  const _PlansOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: PlanOptionCardHolder(
            cardBackgroundColor: Theme.of(context).accentColor,
            planableQuantity: 1,
            planableUnit: "Meal",
            price: 12,
          ),
        ),
        const SizedBox(width: 24),
        Expanded(
          child: PlanOptionCardHolder(
            planableUnit: "Meal",
            planableQuantity: 2,
            cardBackgroundColor: appPickColor,
            price: 18,
          ),
        ),
      ],
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  final String categoryName;

  const _CustomAppBar({
    super.key,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.arrow_back_ios),
        Text(
          categoryName,
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        CircleAvatar(
          child: Image.asset('assets/svg/user.png'),
        ),
      ],
    );
  }
}

class PlanOptionCardHolder extends StatelessWidget {
  final Color cardBackgroundColor;
  final int price;
  final int planableQuantity;
  final String planableUnit;

  const PlanOptionCardHolder({
    super.key,
    required this.cardBackgroundColor,
    required this.price,
    required this.planableQuantity,
    required this.planableUnit,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Card(
        color: cardBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(
                  "$planableQuantity $planableUnit",
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontSize: 22,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Text(
                    '\$$price',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          fontSize: 22,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Text(
                    '  /a day',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          fontSize: 16,
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                ],
              ),
              Expanded(child: SizedBox()),
              GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 48,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Text(
                    "view Data",
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FeaturesSection extends StatelessWidget {
  List<CategoryItems> categories = const [
    CategoryItems(
      categoryName: "Order your name",
      categoryIcon: "online-shop",
    ),
    CategoryItems(
      categoryName: "Schedule as per your ease",
      categoryIcon: "calendar",
    ),
    CategoryItems(
      categoryName: "Schedule as per your ease",
      categoryIcon: "delivery",
    ),
    CategoryItems(
      categoryIcon: "maps",
      categoryName: "Track Delivery",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(left: 36, right: 36, top: 16),
      shrinkWrap: true,
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 42.0,
        mainAxisSpacing: 24.0,
      ),
      itemBuilder: (_, index) => FeaturesItemHolder(
        featureName: categories[index].categoryName,
        featureAssetName: categories[index].categoryIcon,
      ),
    );
  }
}

class FeaturesItemHolder extends StatelessWidget {
  final String featureName;
  final String featureAssetName;

  const FeaturesItemHolder({
    super.key,
    required this.featureName,
    required this.featureAssetName,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: customCardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/svg/$featureAssetName.svg'),
            const SizedBox(height: 16),
            Text(
              featureName,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: Theme.of(context).primaryColor,
                    height: 1.2,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
