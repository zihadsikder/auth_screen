import 'package:flutter/material.dart';
import 'package:login_screen/constants/styles.dart';
import 'package:login_screen/features/auth/views/auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppStyles.primaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const AuthScreen(),
    );
  }
}
