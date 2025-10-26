import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutritionist_app/auth/login_screen.dart';
import 'package:nutritionist_app/constants.dart';
import 'package:nutritionist_app/widgets/my_button.dart';
import 'package:nutritionist_app/widgets/my_text_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  bool isConfirmCode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/auth/bg.jpg', fit: BoxFit.cover),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [SvgPicture.asset("assets/app/logo.svg", width: 120)],
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
                            horizontal: 30,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: kPrimaryColor,
                          ),
                          child: Column(
                            children: [
                              Text(
                                textAlign: TextAlign.center,
                                isConfirmCode
                                    ? "Изменить пароль"
                                    : "Подтверждение",
                                style: TextStyle(
                                  fontSize: 23,
                                  letterSpacing: 0.2,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'ActayWide',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 40),
                              isConfirmCode
                                  ? Text(
                                      textAlign: TextAlign.center,
                                      "Новый пароль был выслан вам в SMS, пожалуйста проверьте",
                                      style: TextStyle(
                                        fontSize: 12,
                                        letterSpacing: 0.2,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'ActayWide',
                                        color: Colors.white,
                                      ),
                                    )
                                  : Column(
                                      children: [
                                        Text(
                                          textAlign: TextAlign.center,
                                          "Пожалуйста, введите код из SMS",
                                          style: TextStyle(
                                            fontSize: 12,
                                            letterSpacing: 0.2,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'ActayWide',
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        MyTextField(hintText: "Введите код"),
                                        SizedBox(height: 20),
                                        InkWell(
                                          onTap: () {},
                                          child: Text(
                                            textAlign: TextAlign.center,
                                            'Отправить код повторно',
                                            style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationColor: Colors.white,
                                              fontSize: 14,
                                              letterSpacing: 0.2,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'ActayWide',
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                              SizedBox(height: 34),
                              SizedBox(
                                height: 45,
                                width: double.infinity,
                                child: MyButton(
                                  bgColor: Colors.white,
                                  title: isConfirmCode ? "Войти" : "Продолжить",
                                  onPressed: confirmCode,
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

  void confirmCode() {
    if(isConfirmCode) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) {
          return LoginScreen();
        })
      );
    } else {
      isConfirmCode = true;
      setState(() {});
    }
  }
}
