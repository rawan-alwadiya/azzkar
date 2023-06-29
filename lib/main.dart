import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:azzkar/screens/about_app_screen.dart';
import 'package:azzkar/screens/app_screen.dart';
import 'package:azzkar/screens/launch_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'),
        Locale('en')
      ],
      locale: const Locale('ar'),
      // locale:Locale('fr'),
      // home: LaunchScreen(),
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context)=>const LaunchScreen(),
        '/app_screen': (context)=> const AppScreen(),
        '/about_app_screen': (context)=> /*const*/ AboutAppScreen(massage: 'main massage',),
      },
    );
  }
}
