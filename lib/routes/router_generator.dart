import 'package:flutter/material.dart';
import 'package:bexel_assesment/routes/routes_names.dart ';
import 'package:bexel_assesment/features/welcome/presentation/welcome_page.dart';
import 'package:bexel_assesment/features/home/presentation/pages/home_page.dart';

Route onGenerateAppRoute(RouteSettings settings) {
  switch (settings.name) {
    case home:
      return MaterialPageRoute(
        builder: (_) => const HomePage(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const WelcomePage(),
      );
  }
}
