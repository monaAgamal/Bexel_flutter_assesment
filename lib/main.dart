import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bexel_assesment/core/app_theme/app_theme.dart';
import 'package:bexel_assesment/features/welcome/presentation/welcome_page.dart';
import 'package:bexel_assesment/routes/router_generator.dart';
import 'package:bexel_assesment/di/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      statusBarBrightness: Brightness.dark,
    ),
  );
  await configure();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      title: 'Bexel Task',
      theme: AppTheme.theme,
      onGenerateRoute: onGenerateAppRoute,
    );
  }
}
