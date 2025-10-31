import 'package:flutter/material.dart';
import 'package:nutritionist_app/constants.dart';
import 'package:nutritionist_app/features/home/widgets/person_container.dart';
import 'package:nutritionist_app/features/message/screens/chat_screen.dart';
import 'package:nutritionist_app/widgets/my_button.dart';

class MessageList extends StatelessWidget {
  const MessageList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( // ✅ добавили прокрутку
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PersonContainer(),
          const SizedBox(height: 15),

          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: MyButton(
              title: "Ваш чат с врачом",
              onPressed: () {},
            ),
          ),

          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Card(
              color: const Color(0xffFEF8F1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(40),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ChatScreen();
                  }));
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/users/evgeniya.png", width: 70),
                      const SizedBox(width: 10),
                      Expanded( // ✅ чтобы текст не вылазил за экран
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Евгения Александровна",
                              style: TextStyle(
                                fontSize: 15,
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'ActayWide',
                                color: kPrimaryColor,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Здравствуйте, хорошо, я вас поняла Ев...",
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
