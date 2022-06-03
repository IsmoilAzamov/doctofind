
import 'package:doctofind/screens/auth_screen.dart';
import 'package:doctofind/screens/home_screen.dart';
import 'package:doctofind/screens/login_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'DoctoFind',
      theme: ThemeData(
        primaryColor: Colors.white
        //primaryColor: const Color.fromARGB(255, 37, 167, 210),
      ),
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/authScreen': (context) => const AuthScreen(),
        '/loginScreen': (context) => const LoginScreen(),
        '/homeScreen': (context) => const HomeScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
      },
      home: const HomeScreen(),
    );
  }
}
