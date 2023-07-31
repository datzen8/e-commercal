import 'package:e_commmercal/screens/home.dart';
import 'package:e_commmercal/screens/login_screen.dart';
import 'package:e_commmercal/screens/sign_up_screen.dart';
import 'package:e_commmercal/styles/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Metropolis",
          scaffoldBackgroundColor: AppColors.scaffold
      ),
        home: MainScreen(),
      // home: SignUpScreen(),
    );
  }
}



