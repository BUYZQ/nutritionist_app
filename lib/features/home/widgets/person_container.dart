import 'package:flutter/material.dart';
import 'package:nutritionist_app/constants.dart';
import 'package:nutritionist_app/features/notification/screens/notification_screen.dart';
import 'package:nutritionist_app/features/profile/screens/profile_screen.dart';
import 'package:nutritionist_app/features/settings/screens/settings_screen.dart';

class PersonContainer extends StatelessWidget {
  const PersonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ProfileScreen();
          }));
        },
        child: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
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
                  color: Color(0xffFEF8F1),
                  borderRadius:  BorderRadius.circular(40),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return NotificationScreen();
                      }));
                    },
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Image.asset("assets/home/notification.png", width: 25),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Material(
                  color: Color(0xffFEF8F1),
                  borderRadius:  BorderRadius.circular(40),
                  child: InkWell(
                    onTap: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return SettingsScreen();
                    }));

                    },
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
        ),
      ),
    );
  }
}
