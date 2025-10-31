import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutritionist_app/constants.dart';
import 'package:nutritionist_app/features/auth/screens/change_password_screen.dart';
import 'package:nutritionist_app/features/home/screens/food_screen.dart';
import 'package:nutritionist_app/features/root/root_screen.dart';
import 'package:nutritionist_app/widgets/my_button.dart';
import 'package:nutritionist_app/widgets/my_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                                "Авторизация",
                                style: TextStyle(
                                  fontSize: 23,
                                  letterSpacing: 0.2,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'ActayWide',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 50),
                              MyTextField(
                                hintText: "Номер телефона",
                              ),
                              SizedBox(height: 10),
                              MyTextField(
                                hintText: "Индивидуальный пароль",
                              ),
                              SizedBox(height: 30),
                              InkWell(
                                onTap: navToChangePasswordScreen,
                                child: Text(
                                  textAlign: TextAlign.center,
                                  'Забыли пароль',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.white,
                                    fontSize: 16,
                                    letterSpacing: 0.2,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'ActayWide',
                                    color: Colors.white
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              SizedBox(
                                height: 45,
                                width: double.infinity,
                                child: MyButton(
                                  bgColor: Color(0xffF8F1EA),
                                  title: "Войти",
                                  onPressed: navToRootScreen,
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

  void navToRootScreen() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) {
          return RootScreen();
        })
    );
  }

  void navToChangePasswordScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return ChangePasswordScreen();
      })
    );
  }
}
