import 'package:flutter/material.dart';
import 'package:nutritionist_app/constants.dart';
import 'package:nutritionist_app/features/home/widgets/custom_app_bar.dart';

class RecordScreen extends StatelessWidget {
  const RecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(title: "Новая запись"),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xffFEF8F1),
                  borderRadius: BorderRadiusGeometry.circular(40),
                ),
                width: double.infinity,
                child: ListView(
                  children: [
                    Padding(
                      padding: EdgeInsetsGeometry.all(20),
                      child: Text(
                        "Продукты для здоровья печени и желчного, как основных органах детоксикации",
                        style: const TextStyle(
                          fontSize: 28,
                          letterSpacing: 0.2,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'ActayWide',
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Color(0xffECDCD6),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.all(20),
                      child: Text(
                        "Самое первое и важное, что надо понять, что практически все проблемы со здоровьем печени у нас начинаются с лишнего веса, потому что первое место, куда организм откладывает жир - вокруг внутренних органов для их защиты: от ударов или переохлаждения. Тот самый висцеральный жир, который работает как такая пупырчатая пленка для упаковки ценного груза. Самый простой способ понять, находитесь ли вы на пути к жировой инфильтрации печени измерить свою талию. Если объем более 80 см у женщин и 94 см у мужчин - это маркер того, что печень у такого человека уже начала «жиреть». Да, от этой цифры возможны отклонения, если человек высокий и крупнокостный, но, в большинстве случаев это достаточный показатель. У гиперстеничных людей мы смотрим соотношение талии к бердам, у женщин оно должно быть менее 0,8, у мужчин - менее 1. Проблемы с желчным пузырем и текучестью желчи часто берут свое начало из печени. То есть, часто, при МАЖБП («Жировой гепатоз» по-старому) печень начинает создавать более литогенную желчь (более густую), что ухудшает качество пищеварения и может вызвать определенные симптомы. Для чего нужна желчь? 1. Усвоение жирорастворимых витаминов АКДЕ",
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 0.2,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'ActayWide',
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
