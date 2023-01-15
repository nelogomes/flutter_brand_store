import 'package:flutter/material.dart';
import 'package:flutter_brand_store/common/app_colors.dart';
import 'package:flutter_brand_store/views/screens/home_screen.dart';
import 'package:flutter_brand_store/views/screens/product_detail_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        brightness: Brightness.light,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        fontFamily: 'Imprima',
        primaryColor: AppColors.primary,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Colors.transparent,
        ),
      ),
      home: const HomeScreen(),
      title: 'Material App',
    );
  }
}
