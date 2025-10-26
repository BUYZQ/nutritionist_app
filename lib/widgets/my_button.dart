import 'package:flutter/material.dart';
import 'package:nutritionist_app/constants.dart';

class MyButton extends StatelessWidget {

  final String title;
  final VoidCallback onPressed;
  final Color? bgColor;

  const MyButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor == null ? kPrimaryColor : bgColor!,
        foregroundColor: bgColor == null ? Colors.white : kPrimaryColor,
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 12,
          letterSpacing: 0.2,
          fontWeight: FontWeight.w700,
          fontFamily: 'ActayWide',
        ),
      ),
    );
  }
}
