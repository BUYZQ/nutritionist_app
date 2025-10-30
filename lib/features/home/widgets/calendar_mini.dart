import 'package:flutter/material.dart';
import 'package:horizontal_list_calendar/horizontal_list_calendar.dart';
import 'package:nutritionist_app/constants.dart';
import 'package:nutritionist_app/features/home/screens/food_calendar_screen.dart';

class CalendarMini extends StatelessWidget {
  const CalendarMini({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(30),
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return FoodCalendarScreen();
            }),
          );
        },
        child: HorizontalListCalendar(
          moveToNextMonthIconBackgroundColor: Colors.black,
          moveToPreviousMonthIconBackgroundColor: Colors.black,
          todayTextStyle: TextStyle(
            letterSpacing: 0.2,
            fontWeight: FontWeight.w700,
            fontFamily: 'ActayWide',
            color: kPrimaryColor,
            fontSize: 18,
          ),
          unSelectedTextStyle: TextStyle(
            letterSpacing: 0.2,
            fontWeight: FontWeight.w700,
            fontFamily: 'ActayWide',
            color: kPrimaryColor,
            fontSize: 18,
          ),
          selectedTextStyle: TextStyle(
            letterSpacing: 0.2,
            fontWeight: FontWeight.w700,
            fontFamily: 'ActayWide',
            color: kPrimaryColor,
            fontSize: 18,
          ),
          headerTextStyle: TextStyle(
            letterSpacing: 0.2,
            fontWeight: FontWeight.w700,
            fontFamily: 'ActayWide',
            color: kPrimaryColor,
            fontSize: 18,
          ),
          selectedColor: Colors.white,
          todayFillColor: Colors.white,
          scrollController: ScrollController(),
          onTap: (val) {},
        ),
      ),
    );
  }
}