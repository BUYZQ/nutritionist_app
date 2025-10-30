import 'package:flutter/material.dart';
import 'package:nutritionist_app/features/home/widgets/food_tiles.dart';
import 'package:nutritionist_app/features/home/widgets/person_container.dart';
import 'package:nutritionist_app/features/home/widgets/user_strick.dart';

import '../widgets/calendar_mini.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          PersonContainer(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20,
              ),
              child: ListView(
                children: [
                  UserStrick(),
                  SizedBox(height: 10),
                  CalendarMini(),
                  SizedBox(height: 10),
                  FoodTiles(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}










