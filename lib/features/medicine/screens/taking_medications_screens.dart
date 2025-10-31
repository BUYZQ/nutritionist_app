import 'package:flutter/material.dart';
import 'package:nutritionist_app/constants.dart';
import 'package:nutritionist_app/features/home/widgets/custom_app_bar.dart';

class TakingMedicationsScreens extends StatelessWidget {
  const TakingMedicationsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(title: "Приём\nлекарственных препаратов"),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xffFEF8F1),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _sectionTitle("Утром до еды"),
                      const SizedBox(height: 10),
                      _medicineRow("Текст, в котором указывается что человеку нужно принять"),
                      _medicineRow("Текст, в котором указывается что человеку нужно принять"),

                      const SizedBox(height: 20),
                      _sectionTitle("Утром после еды (завтрака)"),
                      const SizedBox(height: 10),
                      _medicineList([
                        "Текст, в котором указывается что человеку нужно принять",
                        "Текст, в котором указывается что человеку нужно принять",
                        "Текст, в котором указывается что человеку нужно принять",
                      ]),

                      const SizedBox(height: 20),
                      _sectionTitle("В обед после еды"),
                      const SizedBox(height: 10),
                      _medicineList([
                        "Текст, в котором указывается что человеку нужно принять",
                        "Текст, в котором указывается что человеку нужно принять",
                        "Текст, в котором указывается что человеку нужно принять",
                      ]),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Заголовок блока (например, "Утром до еды")
  Widget _sectionTitle(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 22,
        letterSpacing: 0.2,
        fontWeight: FontWeight.w700,
        fontFamily: 'ActayWide',
        color: kPrimaryColor,
      ),
    );
  }

  // Одна строка с иконкой
  Widget _medicineRow(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("assets/home/success.png", width: 30),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              letterSpacing: 0.2,
              fontWeight: FontWeight.w700,
              fontFamily: 'ActayWide',
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }

  // Несколько строк текста без иконок (вложенный список)
  Widget _medicineList(List<String> texts) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: texts
            .map((t) => Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            t,
            style: const TextStyle(
              fontSize: 14,
              letterSpacing: 0.2,
              fontWeight: FontWeight.w700,
              fontFamily: 'ActayWide',
              color: kPrimaryColor,
            ),
          ),
        ))
            .toList(),
      ),
    );
  }
}
