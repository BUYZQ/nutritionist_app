import 'package:flutter/material.dart';
import 'package:nutritionist_app/constants.dart';

class CustomAppBar extends StatelessWidget {

  final String title;

  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        color: Colors.white,
        boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 2)],
      ),
      child: Column(
        children: [
          SizedBox(height: 15),
          Row(
            children: [
              Material(
                color: Color(0xffFEF8F1),
                borderRadius: BorderRadius.circular(40),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    height: 60,
                    width: 60,
                    child: const Icon(Icons.arrow_back, size: 40),
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  textAlign: TextAlign.center,
                  title,
                  style: TextStyle(
                    fontSize: 22,
                    letterSpacing: 0.2,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'ActayWide',
                    color: kPrimaryColor,
                  ),
                ),
              ),
              const SizedBox(width: 30),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}