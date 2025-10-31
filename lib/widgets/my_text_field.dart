import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {

  final String hintText;

  const MyTextField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF8F1EA),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 1,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(
          fontSize: 14,
          letterSpacing: 0.2,
          fontWeight: FontWeight.w700,
          fontFamily: 'ActayWide',
          color: Colors.grey,
        ),
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 14),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
