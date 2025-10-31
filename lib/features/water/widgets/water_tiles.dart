import 'package:flutter/material.dart';
import 'package:nutritionist_app/features/home/screens/foodtodo_screen.dart';
import 'package:nutritionist_app/features/water/screens/water_todo_screen.dart';
import 'package:nutritionist_app/widgets/mt_list_tile.dart';

class WaterTiles extends StatefulWidget {
  const WaterTiles({
    super.key,
  });

  @override
  State<WaterTiles> createState() => _WaterTilesState();
}

class _WaterTilesState extends State<WaterTiles> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyListTile(
          title: "Вода",
          subtitle: "Всего выпито воды: 600 мл",
          onTap: () => navToTodoScreen("Вода"),
        ),
        SizedBox(height: 10),
      ],
    );
  }

  void navToTodoScreen(String title) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return WaterTodoScreen(title: title);
      }),
    );
  }
}