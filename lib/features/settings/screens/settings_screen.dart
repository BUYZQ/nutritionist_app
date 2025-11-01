import 'package:flutter/material.dart';
import 'package:nutritionist_app/constants.dart';
import 'package:nutritionist_app/features/home/widgets/custom_app_bar.dart';
import 'package:nutritionist_app/features/settings/widgets/settings_card.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView( // ✅ чтобы всё прокручивалось
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(title: "Настройки"),
              const SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ---- Заголовок ----
                    const Text(
                      "Посмотренные",
                      style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 0.2,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'ActayWide',
                        color: kPrimaryColor,
                      ),
                    ),
                    const SizedBox(height: 10),

                    // ---- Карточка: Язык ----
                    const SettingsCard(
                      title: "Приложение",
                      subtitle: "Язык",
                      imagePath: "assets/settings/lang.png",
                    ),

                    const SizedBox(height: 15),

                    // ---- Карточка: Поддержка ----
                    Material(
                      color: const Color(0xffFEF8F1),
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Поддержка",
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 18,
                                fontFamily: 'ActayWide',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 15),
                            InkWell(
                              onTap: () {},
                              borderRadius: BorderRadius.circular(30),
                              child: Row(
                                children: [
                                  Image.asset("assets/settings/link.png", width: 30),
                                  const SizedBox(width: 10),
                                  const Flexible(
                                    child: Text(
                                      "Связаться с нами",
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: 14,
                                        fontFamily: 'ActayWide',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            InkWell(
                              onTap: () {},
                              borderRadius: BorderRadius.circular(30),
                              child: Row(
                                children: [
                                  Image.asset("assets/settings/security.png", width: 30),
                                  const SizedBox(width: 10),
                                  const Flexible(
                                    child: Text(
                                      "Политика конфиденциальности",
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: 14,
                                        fontFamily: 'ActayWide',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    // ---- Карточка: Версия ----
                    const SettingsCard(
                      title: "Информация о приложении",
                      subtitle: "1.0.00",
                      imagePath: "assets/settings/version.png",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
