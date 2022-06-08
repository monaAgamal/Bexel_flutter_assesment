import 'package:bexel_assesment/features/welcome/presentation/widgets/category_item_builder.dart';
import 'package:bexel_assesment/features/welcome/presentation/widgets/category_section.dart';
import 'package:flutter/material.dart';
import 'package:bexel_assesment/routes/routes_names.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              SvgPicture.asset('assets/svg/logo.svg'),
              const SizedBox(height: 16),
              Text(
                "Let's help  together in this pandemic!",
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      height: 1.4,
                      fontSize: 18,
                    ),
              ),
              const SizedBox(height: 24),
              Text(
                "You can get medical and food service at your doorsteps and also anyone can donate some fund for covid patients.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      height: 1.6,
                      fontSize: 18,
                    ),
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
