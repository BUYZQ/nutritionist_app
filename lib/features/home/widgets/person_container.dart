import 'package:flutter/material.dart';
import 'package:nutritionist_app/constants.dart';

class PersonContainer extends StatelessWidget {
  const PersonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2)],
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Image.asset("assets/auth/person.png", width: 80),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "Добрый день,",
                  style: TextStyle(
                    fontSize: 13,
                    letterSpacing: 0.2,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'ActayWide',
                    color: kPrimaryColor,
                  ),
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Ульяна Владимировна",
                  style: TextStyle(
                    fontSize: 13,
                    letterSpacing: 0.2,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'ActayWide',
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(width: 10),
            Material(
              color: Color(0xffF8F1EA),
              borderRadius:  BorderRadius.circular(40),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset("assets/home/notification.png", width: 25),
                ),
              ),
            ),
            SizedBox(width: 10),
            Material(
              color: Color(0xffF8F1EA),
              borderRadius:  BorderRadius.circular(40),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset("assets/home/settings.png", width: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
