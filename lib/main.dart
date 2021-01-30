
import 'package:app/di/injector_provider.dart';
import 'package:app/ui/constants.dart';
import 'package:app/ui/screens/splash/welcome.dart';
import 'package:flutter/material.dart';


void main() {
  setupInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Astroplant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: CColors.black,
        backgroundColor: CColors.black,
        accentColor: CColors.primary,
        textTheme: TEXT_THEME_DEFAULT,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Larsseit'
      ),
      initialRoute: '/',
      home: WelcomeScreen(),
    );
  }


}