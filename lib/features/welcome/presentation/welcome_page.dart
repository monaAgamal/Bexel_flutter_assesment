import 'package:flutter/material.dart';
import 'package:bexel_assesment/routes/routes_names.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
                width: 80,
              ),
              const SizedBox(
                height: 80,
                width: 80,
              ),
              const Text("Let's help  together\n in this pandemic!"),
              const SizedBox(height: 24),
              Text(
                "You can get medical and food service at your doorsteps and also anyone can donate some fund for covid patients.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(),
              ),
            ],
          ),
        ),
        const Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: CategorySection(),
        ),
      ],
    );
  }
}

class CategorySection extends StatelessWidget {
  const CategorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Center(
            child: Text(
              "Choose your category",
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: Colors.black,
                  ),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CategoryItem(
                imagPath: "medicines",
                categoryLabel: "medicines",
              ),
              CategoryItem(
                imagPath: "hot-food",
                categoryLabel: "Food",
              ),
              CategoryItem(
                categoryLabel: "Donate",
                imagPath: "giving",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String imagPath;
  final String categoryLabel;

  const CategoryItem({
    super.key,
    required this.imagPath,
    required this.categoryLabel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(home),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/svg/$imagPath.svg'),
          const SizedBox(height: 8),
          Text(
            categoryLabel,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  color: Colors.black,
                ),
          ),
        ],
      ),
    );
  }
}
