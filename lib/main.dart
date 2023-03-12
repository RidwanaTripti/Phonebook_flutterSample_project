import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'splash_screen.dart';
import 'screens/first_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: First_Screen(),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => Login_Screen()
      },
    );
  }
}
