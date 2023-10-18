import 'package:flower_shop/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({super.key});

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  bool rememberMe = false;

  _onRememberMeChanged() {
    setState(() {
      rememberMe = !rememberMe;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onRememberMeChanged,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
            value: rememberMe,
            onChanged: (value) {},
            checkColor: AppConst.kLight,
            fillColor: MaterialStatePropertyAll(Colors.green.shade400),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
          Text(
            "Remember Me",
            style: GoogleFonts.epilogue(textStyle: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
