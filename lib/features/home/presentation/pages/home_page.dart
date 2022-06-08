import 'package:flutter/material.dart';
import 'package:bexel_assesment/core/app_theme/app_colors_palate.dart';

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
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height * 0.35,
          child: _PlanSelection(
            categoryName: categoryName,
          ),
        ),
        const Text("Our Features"),
      ],
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
      builder: (context, constraints) =>
          Stack(
            children: [
              Container(
                height: constraints.maxHeight * 0.25,
                decoration: BoxDecoration(
                  color: Theme
                      .of(context)
                      .primaryColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
              _CustomAppBar(
                categoryName: categoryName,
              ),
              Text(
                "Select your plan and enjoy a warm lunch or dinner at your home.",
                style: Theme
                    .of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(
                  fontWeight: FontWeight.w200,
                ),
              ),
              Positioned(
                left: 12,
                right: 12,
                top: constraints.maxHeight * 0.75,
                child: const _PlansOptions(),
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
        PlanOptionCardHolder(
          cardBackgroundColor: Theme
              .of(context)
              .accentColor,
          planableQuantity: 1,
          planableUnit: "Meal",
          price: 12,
        ),
        const SizedBox(width: 24),
        PlanOptionCardHolder(
          planableUnit: "Meal",
          planableQuantity: 2,
          cardBackgroundColor: appPickColor,
          price: 18,
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
          style: Theme
              .of(context)
              .textTheme
              .bodyText2
              ?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        CircleAvatar(
          child: Image.asset('assets/svg/user.svg'),
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
    return Card(
      color: cardBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "$planableQuantity $planableUnit",
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Text(
                '$price',
              ),
              Text(
                '/a day',
                style: Theme
                    .of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(
                  fontSize: 12,
                  color: Theme
                      .of(context)
                      .primaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Text(
                "view Deta",
                textAlign: TextAlign.center,
                style: Theme
                    .of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(
                  color: Theme
                      .of(context)
                      .primaryColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FeaturesSection extends StatelessWidget {

  // SliverGridDelegate gridDelegate = SliverGridDelegate

  @override
  Widget build(BuildContext context) {
    GridView.builder(
      gridDelegate: gridDelegate,
      itemBuilder: (_, index) =>
          FeaturesItemHolder(
            featureName: "Order your name",
            featureAssetName:,
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
      color: customCardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/svg/$featureAssetName.svg'),
            const SizedBox(height: 16),
            Text(
              featureName,
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(
                color: Theme
                    .of(context)
                    .primaryColor,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
