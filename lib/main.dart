import 'package:flower_shop/pages/login/login_page.dart';
import 'package:flower_shop/pages/splashscreen.dart';
import 'package:flower_shop/theme/app_colors.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
            selectionColor: AppConst.kGreen,
            cursorColor: AppConst.kGreen,
            selectionHandleColor: AppConst.kGreen),
        inputDecorationTheme: InputDecorationTheme(
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          floatingLabelStyle: GoogleFonts.epilogue(
              textStyle: TextStyle(fontSize: 20, color: AppConst.kGreen)),
          isCollapsed: true,
          alignLabelWithHint: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppConst.kGreen),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppConst.kGreen),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      title: "Flower Shop",
      home: LoginPage(),
    );
  }
}
