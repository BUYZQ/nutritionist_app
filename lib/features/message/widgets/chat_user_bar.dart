import 'package:flutter/material.dart';
import 'package:nutritionist_app/constants.dart';

class ChatUserBar extends StatefulWidget {
  const ChatUserBar({super.key});

  @override
  State<ChatUserBar> createState() => _ChatUserBarState();
}

class _ChatUserBarState extends State<ChatUserBar> {

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
            Container(
              decoration: BoxDecoration(
                color: Color(0xffFEF8F1),
                borderRadius: BorderRadiusGeometry.circular(40),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Image.asset("assets/home/backward.png", width: 20),
              ),
            ),
            SizedBox(width: 10),
            Image.asset("assets/users/evgeniya.png", width: 80),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "Евгения Александровна",
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
                  "Был(а) в сети в 15:30",
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
          ],
        ),
      ),
    );
  }
}
