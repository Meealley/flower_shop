import 'package:flower_shop/pages/login/widget/forgot_password.dart';
import 'package:flower_shop/pages/onboarding/widgets/onboarding_controls.dart';
import 'package:flower_shop/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginForm extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginForm({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Form(
      child: Column(
        children: [
          TextFormField(
            controller: widget.emailController,
            decoration: InputDecoration(
              labelText: "Email address",
              hintText: "Enter your email address",
              labelStyle: GoogleFonts.epilogue(
                textStyle: TextStyle(fontSize: 17, color: AppConst.kGreen),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
            style: GoogleFonts.epilogue(textStyle: TextStyle(fontSize: 18)),
          ),
          SizedBox(
            height: 23,
          ),
          TextFormField(
            controller: widget.passwordController,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter your password",
              suffixIconConstraints: BoxConstraints(
                minHeight: 40,
                maxHeight: 40,
                minWidth: 40,
                maxWidth: 40,
              ),
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                  print("Suffix icons");
                },
                child: _obscureText
                    ? Icon(Icons.visibility)
                    : Icon(Icons.visibility_off),
              ),
              suffixStyle: TextStyle(color: AppConst.kGreen),
              labelStyle: GoogleFonts.epilogue(
                textStyle: TextStyle(fontSize: 17, color: AppConst.kGreen),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
            obscureText: _obscureText,
            style: GoogleFonts.epilogue(textStyle: TextStyle(fontSize: 18)),
          ),
          SizedBox(
            height: 8,
          ),
          ForgotpasswordLabel(),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: double.infinity,
            child: CustomButton(
                onPressed: () {
                  print("login butn");
                },
                title: "Login"),
          ),
        ],
      ),
    ));
  }
}
