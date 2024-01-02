import 'package:flutter/material.dart';
import 'package:starbucks_app/src/pages/auth/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Poppins',
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(0, 98, 59, 10),
          )),
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}
