import 'package:flutter/material.dart';
import 'package:nutritionist_app/constants.dart';
import 'package:nutritionist_app/features/message/widgets/chat_user_bar.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();

  final List<Map<String, dynamic>> _messages = [
    {
      "text":
      "Здравствуйте, Ульяна Владимировна! Меня зовут Евгения Александровна, я врач-нутрициолог. Буду рада помочь вам разобраться в вопросах питания и подобрать индивидуальный план для улучшения самочувствия и достижения ваших целей.",
      "isUser": false,
    },
    {
      "text": "Здравствуйте. Хорошо, я вас поняла, Евгения Александровна.",
      "isUser": true,
    },
  ];

  bool isSend = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const ChatUserBar(),

            // === Сообщения ===
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                reverse: true,
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final message = _messages[_messages.length - 1 - index];
                  final isUser = message["isUser"] as bool;
                  final text = message["text"] as String;

                  return Align(
                    alignment:
                    isUser ? Alignment.centerRight : Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      padding: const EdgeInsets.all(12),
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.75,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffFEF8F1),
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(30),
                          topRight: const Radius.circular(30),
                          bottomLeft: Radius.circular(isUser ? 16 : 0),
                          bottomRight: Radius.circular(isUser ? 0 : 16),
                        ),
                      ),
                      child: Text(
                        text,
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 14,
                          fontFamily: 'ActayWide',
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // === Поле ввода ===
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xffF8F1EA),
                borderRadius: BorderRadius.circular(40),
                border: Border(
                  top: BorderSide(color: Color(0xffE0E0E0)),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          if(value.isNotEmpty) {
                            isSend = true;
                          } else {
                            isSend = false;
                          }
                        });
                      },
                      controller: _controller,
                      style: const TextStyle(
                        fontFamily: 'ActayWide',
                        fontSize: 14,
                        color: kPrimaryColor,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/message/clip.png", width: 20),
                        ),
                        hintText: "Введите сообщение...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: isSend ? Image.asset("assets/message/send.png", width: 20) :  Image.asset("assets/message/micro.png", width: 15),
                    onPressed: _sendMessage,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _sendMessage() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;

    setState(() {
      _messages.add({"text": text, "isUser": true});
    });

    _controller.clear();
  }
}
