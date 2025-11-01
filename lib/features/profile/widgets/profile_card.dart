import 'package:flutter/material.dart';
import 'package:nutritionist_app/constants.dart';

class ProfileCard extends StatelessWidget {

  final String title;
  final String imagePath;

  const ProfileCard({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffFEF8F1),
      borderRadius: BorderRadius.all(Radius.circular(40)),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(40),
        child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  child: Image.asset(imagePath, width: 30),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10),
                Flexible(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 14,
                      fontFamily: 'ActayWide',
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}
