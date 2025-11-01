import 'package:flutter/material.dart';
import 'package:nutritionist_app/constants.dart';
import 'package:nutritionist_app/features/home/widgets/custom_app_bar.dart';
import 'package:nutritionist_app/features/profile/widgets/profile_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(title: "Уведомления"),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "Посмотренные",
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 0.2,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'ActayWide',
                      color: kPrimaryColor,
                    ),
                  ),
                  ProfileCard(
                    title: "Вам написал ваш врач Евгения Александровна",
                    imagePath: "assets/root/message.png",
                  ),
                  ProfileCard(
                    title: "Вам ответил ваш врач Евгения Александровна",
                    imagePath: "assets/root/message.png",
                  ),
                  ProfileCard(
                    title: "Ваш врач опубликовал в основную инфорамцию новый документ",
                    imagePath: "assets/root/list.png",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
