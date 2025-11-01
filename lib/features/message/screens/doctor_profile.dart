import 'package:flutter/material.dart';
import 'package:nutritionist_app/constants.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({super.key});

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
              Image.asset("assets/users/evgeniya.png", width: 120),
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
                        "Бикетова Евгения Александровна",
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
                        "23.05.1982",
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
                          "Документы",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 20,
                            fontFamily: 'ActayWide',
                          ),
                        ),
                      ],
                    ),
                    DoctorInfoCard(title: "Лицензия"),
                    DoctorInfoCard(title: "Лицензия"),
                    DoctorInfoCard(title: "Высшее образование"),
                    DoctorInfoCard(title: "Диплом проф. переподготовки"),
                    DoctorInfoCard(title: "Спец. программы"),
                    SizedBox(height: 20),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DoctorInfoCard extends StatelessWidget {

  final String title;

  const DoctorInfoCard({
    super.key,
    required this.title,
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
                  child: Image.asset("assets/info/pdf.png", width: 30),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  title,
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 14,
                    fontFamily: 'ActayWide',
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}


