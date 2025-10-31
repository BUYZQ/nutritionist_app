import 'package:flutter/material.dart';
import 'package:nutritionist_app/constants.dart';
import 'package:nutritionist_app/features/home/widgets/person_container.dart';
import 'package:nutritionist_app/features/info/screens/record_screen.dart';
import 'package:nutritionist_app/widgets/my_button.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {

  bool isSelectMainInfo = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PersonContainer(),
          SizedBox(height: 20),
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                child: MyButton(
                  foregroundColor: isSelectMainInfo ? Colors.white : kPrimaryColor,
                  bgColor: isSelectMainInfo ? kPrimaryColor : Colors.white,
                  title: "Основная информация",
                  onPressed: () {
                    setState(() {
                      isSelectMainInfo = true;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 50,
                child: MyButton(
                  foregroundColor: !isSelectMainInfo ? Colors.white : kPrimaryColor,
                  bgColor: !isSelectMainInfo ? kPrimaryColor : Colors.white,
                  title: "Доп. информация",
                  onPressed: () {
                    setState(() {
                      isSelectMainInfo = false;
                    });
                  },
                ),
              ),
            ],
          ),
         SizedBox(height: 20),
         isSelectMainInfo
          ?  Column(
           children: [
             Card(
               color: const Color(0xffFEF8F1),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(40),
               ),
               child: InkWell(
                 borderRadius: BorderRadius.circular(40),
                 onTap: () {},
                 child: Container(
                   padding: const EdgeInsets.all(20),
                   child: ListTile(
                     contentPadding: EdgeInsets.zero,
                     leading: Container(
                       padding: EdgeInsets.all(15),
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadiusGeometry.circular(40),
                       ),
                       child: Image.asset("assets/info/list.png", width: 25),
                     ),
                     title: Text(
                       "Список продуктов",
                       style: const TextStyle(
                         fontSize: 13,
                         fontWeight: FontWeight.w700,
                         fontFamily: 'ActayWide',
                         color: kPrimaryColor,
                       ),
                     ),
                   ),
                 ),
               ),
             ),
             Card(
               color: const Color(0xffFEF8F1),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(40),
               ),
               child: InkWell(
                 borderRadius: BorderRadius.circular(40),
                 onTap: () {},
                 child: Container(
                   padding: const EdgeInsets.all(20),
                   child: ListTile(
                     contentPadding: EdgeInsets.zero,
                     leading: Container(
                       padding: EdgeInsets.all(15),
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadiusGeometry.circular(40),
                       ),
                       child: Image.asset("assets/info/list.png", width: 25),
                     ),
                     title: Text(
                       "Рецепты 1 неделя",
                       style: const TextStyle(
                         fontSize: 13,
                         fontWeight: FontWeight.w700,
                         fontFamily: 'ActayWide',
                         color: kPrimaryColor,
                       ),
                     ),
                   ),
                 ),
               ),
             ),
           ],
         ) :  Column(
           children: [
             Card(
               color: const Color(0xffFEF8F1),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(40),
               ),
               child: InkWell(
                 borderRadius: BorderRadius.circular(40),
                 onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                     return RecordScreen();
                   }));
                 },
                 child: Container(
                   padding: const EdgeInsets.all(20),
                   child: ListTile(
                     contentPadding: EdgeInsets.zero,
                     leading: Image.asset("assets/info/products.png"),
                     title: Text(
                       "Продукты для здоровья печени и...",
                       style: const TextStyle(
                         fontSize: 13,
                         fontWeight: FontWeight.w700,
                         fontFamily: 'ActayWide',
                         color: kPrimaryColor,
                       ),
                     ),
                   ),
                 ),
               ),
             ),
             Card(
               color: const Color(0xffFEF8F1),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(40),
               ),
               child: InkWell(
                 borderRadius: BorderRadius.circular(40),
                 onTap: () {},
                 child: Container(
                   padding: const EdgeInsets.all(20),
                   child: ListTile(
                     contentPadding: EdgeInsets.zero,
                     leading: Image.asset("assets/info/Intestine.png"),
                     title: Text(
                       "Тонкий кишечник",
                       style: const TextStyle(
                         fontSize: 13,
                         fontWeight: FontWeight.w700,
                         fontFamily: 'ActayWide',
                         color: kPrimaryColor,
                       ),
                     ),
                   ),
                 ),
               ),
             ),
           ],
         )
        ],
      ),
    );
  }
}
