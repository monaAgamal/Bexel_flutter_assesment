import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bexel_assesment/core/app_theme/app_theme.dart';
import 'package:bexel_assesment/features/welcome/presentation/welcome_page.dart';
import 'package:bexel_assesment/routes/router_generator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      statusBarBrightness: Brightness.dark,
    ),
  );
  // await configure();
  // configure();
  runApp(
    // const MyApp()
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
      title: 'Invola Task',
      theme: AppTheme.theme,
      // localizationsDelegates: const [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: const [
      //   Locale('ar', 'EG'), // English, no country code
      // ],
      onGenerateRoute: onGenerateAppRoute,
    );
  }
}
