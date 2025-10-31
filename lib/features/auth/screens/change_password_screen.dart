import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutritionist_app/constants.dart';
import 'package:nutritionist_app/features/auth/screens/otp_screen.dart';
import 'package:nutritionist_app/widgets/my_button.dart';
import 'package:nutritionist_app/widgets/my_text_field.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/auth/bg.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/app/logo.svg",
                  width: 120,
                ),
              ],
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 40,
                              horizontal: 30
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: kPrimaryColor,
                          ),
                          child: Column(
                            children: [
                              Text(
                                textAlign: TextAlign.center,
                                "Изменить пароль",
                                style: TextStyle(
                                  fontSize: 23,
                                  letterSpacing: 0.2,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'ActayWide',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 50),
                              Text(
                                textAlign: TextAlign.center,
                                "Для изменения пароля подтвердите ваш номер телефона",
                                style: TextStyle(
                                  fontSize: 15,
                                  letterSpacing: 0.2,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'ActayWide',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 20),
                              MyTextField(
                                hintText: "Введите номер телефона",
                              ),
                              SizedBox(height: 34),
                              SizedBox(
                                height: 45,
                                width: double.infinity,
                                child: MyButton(
                                  bgColor: Color(0xffF8F1EA),
                                  foregroundColor: kPrimaryColor,
                                  title: "Продолжить",
                                  onPressed: navToOtpScreen,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void navToOtpScreen() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) {
          return OtpScreen();
        })
    );
  }
}
