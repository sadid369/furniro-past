import 'package:flutter/material.dart';
import 'package:furniro/common/utils/app_colors.dart';
import 'package:furniro/features/home/view/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniro',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.goldenB88E2F,
        ),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home: const Home(),
    );
  }
}
