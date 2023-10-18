import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'forgot_password.dart';
import 'login_form.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back,👋🏻",
              style: GoogleFonts.epilogue(
                  textStyle:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Log in to start using your Petals Account",
              style: GoogleFonts.epilogue(
                textStyle: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            LoginForm(
              emailController: _emailController,
              passwordController: _passwordController,
            ),
            // ForgotpasswordLabel()
          ],
        ),
      ),
    );
  }
}
