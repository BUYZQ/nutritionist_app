import 'package:flutter/material.dart';
import 'package:nutritionist_app/constants.dart';
import 'package:nutritionist_app/features/medicine/screens/taking_medications_screens.dart';

class TakingMedicationsNavPanel extends StatelessWidget {
  const TakingMedicationsNavPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffFEF8F1),
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return TakingMedicationsScreens();
              })
          );
        },
        borderRadius: BorderRadius.circular(30),
        child: Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Приём лекарств",
                style: TextStyle(
                  fontSize: 17,
                  letterSpacing: 0.2,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'ActayWide',
                  color: kPrimaryColor,
                ),
              ),
              Text(
                "Нажмите для просмотра",
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
        ),
      ),
    );
  }
}