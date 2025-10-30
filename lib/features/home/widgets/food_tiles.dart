import 'package:flutter/material.dart';
import 'package:nutritionist_app/features/home/screens/foodtodo_screen.dart';
import 'package:nutritionist_app/widgets/mt_list_tile.dart';

class FoodTiles extends StatefulWidget {
  const FoodTiles({
    super.key,
  });

  @override
  State<FoodTiles> createState() => _FoodTilesState();
}

class _FoodTilesState extends State<FoodTiles> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyListTile(
          title: "Завтрак",
          subtitle: "Каша перловая, бутер...",
          onTap: () => navToTodoScreen("Завтрак"),
        ),
        SizedBox(height: 10),
        MyListTile(
          title: "Второй завтрак",
          onTap: () => navToTodoScreen("Второй завтрак"),
        ),
        SizedBox(height: 10),
        MyListTile(
          title: "Обед",
          onTap: () => navToTodoScreen("Обед"),
        ),
        SizedBox(height: 10),
        MyListTile(
          title: "Полдник",
          onTap: () => navToTodoScreen("Полдник"),
        ),
        SizedBox(height: 10),
        MyListTile(
          title: "Ужин",
          onTap: () => navToTodoScreen("Ужин"),
        ),
      ],
    );
  }

  void navToTodoScreen(String title) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return FoodTodoScreen(title: title);
      }),
    );
  }
}