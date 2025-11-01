import 'package:flutter/material.dart';
import 'package:nutritionist_app/constants.dart';
import 'package:nutritionist_app/features/message/screens/doctor_profile.dart';
import 'package:nutritionist_app/features/profile/widgets/profile_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFEF8F1),
                        borderRadius: BorderRadiusGeometry.circular(40),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset(
                          "assets/home/backward.png",
                          width: 20,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Профиль",
                          style: TextStyle(
                            fontSize: 23,
                            letterSpacing: 0.2,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'ActayWide',
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Image.asset("assets/users/uliana.png", width: 120),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
                child: Column(
                  spacing: 10,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xffFEF8F1),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: Text(
                        "Ульяна Владимировна",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 14,
                          fontFamily: 'ActayWide',
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xffFEF8F1),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: Text(
                        "Женский",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 14,
                          fontFamily: 'ActayWide',
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xffFEF8F1),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: Text(
                        "13.03.1999",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 14,
                          fontFamily: 'ActayWide',
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xffFEF8F1),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: Text(
                        "Россия",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 14,
                          fontFamily: 'ActayWide',
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xffFEF8F1),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: Text(
                        "г. Нерюнгри",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 14,
                          fontFamily: 'ActayWide',
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Врач",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 20,
                            fontFamily: 'ActayWide',
                          ),
                        ),
                      ],
                    ),
                    Material(
                      color: Color(0xffFEF8F1),
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DoctorProfile();
                              },
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/users/evgeniya.png",
                                width: 70,
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Бикетова Евения\nАлександровна",
                                    style: TextStyle(
                                      fontSize: 13,
                                      letterSpacing: 0.2,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'ActayWide',
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Нажмите для просмотра",
                                    style: TextStyle(
                                      fontSize: 12,
                                      letterSpacing: 0.2,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'ActayWide',
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Документы",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 20,
                            fontFamily: 'ActayWide',
                          ),
                        ),
                      ],
                    ),
                    Material(
                      color: Color(0xffFEF8F1),
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(40),
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Добавить файл",
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 14,
                                  fontFamily: 'ActayWide',
                                ),
                              ),
                              IconButton(
                                onPressed: () {}, 
                                icon: Image.asset("assets/home/add.png", width: 30),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    ProfileCard(
                      title: "Анализы",
                      imagePath: "assets/info/galery.png",
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
