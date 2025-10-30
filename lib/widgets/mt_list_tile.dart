import 'package:flutter/material.dart';
import 'package:nutritionist_app/constants.dart';

class MyListTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final VoidCallback onTap;

  const MyListTile({
    super.key,
    required this.title,
    this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(40),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 17,
          letterSpacing: 0.2,
          fontWeight: FontWeight.w700,
          fontFamily: 'ActayWide',
          color: kPrimaryColor,
        ),
      ),
      subtitle: Text(
        subtitle ?? "",
        style: TextStyle(
          fontSize: 13,
          letterSpacing: 0.2,
          fontWeight: FontWeight.w700,
          fontFamily: 'ActayWide',
          color: kPrimaryColor,
        ),
      ),
      trailing: IconButton(
        onPressed: onTap,
        icon: Image.asset("assets/home/add.png"),
      )
    );
  }
}