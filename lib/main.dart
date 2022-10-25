import 'package:flutter/material.dart';
import 'package:gym_app/home.dart';
import 'package:gym_app/screens/login_screen.dart';
import 'package:gym_app/screens/sing_up_screen.dart';

void main() {
  runApp(const MyApp(initialRoute: "/",),);
}

class MyApp extends StatelessWidget {
  final String initialRoute;
  const MyApp({required this.initialRoute});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym App',
      debugShowCheckedModeBanner: false,
      routes: {
        "/" :(context) => LoginScreen(),
        "/login": (context) => LoginScreen(),
        "/signup": (context) => SignUpScreen(),
      },
    );
  }
}
