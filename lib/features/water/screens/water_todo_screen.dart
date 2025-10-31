import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nutritionist_app/constants.dart';
import 'package:nutritionist_app/features/home/widgets/custom_app_bar.dart';
import 'package:nutritionist_app/features/water/screens/select_drink_screen.dart';
import 'package:nutritionist_app/widgets/my_button.dart';

class WaterTodoScreen extends StatefulWidget {
  final String title;

  const WaterTodoScreen({
    super.key,
    required this.title,
  });

  @override
  State<WaterTodoScreen> createState() => _WaterTodoScreenState();
}

class _WaterTodoScreenState extends State<WaterTodoScreen> {

  final List<TodoItem> _todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: widget.title),
            Expanded(
              child: _todos.isEmpty
                  ? const Center(child: Text("Добавьте напиток"))
                  : ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: _todos.length,
                itemBuilder: (context, index) {
                  final todo = _todos[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: Color(0xffFEF8F1),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(0),
                      title: Text(
                        todo.title,
                        style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'ActayWide',
                          color: kPrimaryColor,
                        ),
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            _todos.removeAt(index);
                            setState(() {});
                          },
                          icon: Image.asset("assets/home/close.png", width: 25)
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            DateFormat('HH:mm').format(todo.createdAt),
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'ActayWide',
                              color: kPrimaryColor,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            todo.ml,
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'ActayWide',
                              color: kPrimaryColor,
                            ),
                          ),
                        ],

                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: 200,
              child: MyButton(
                title: "Добавить",
                onPressed: navToSelectDrinkScreen,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void navToSelectDrinkScreen() async {
    final result = await Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const SelectDrinkScreen()),
    );

    if (result != null && result is Map<String, dynamic>) {
      setState(() {
        _todos.add(
          TodoItem(
            title: result['title'],
            ml: "${result['ml']} мл",
            createdAt: result['createdAt'],
          ),
        );
      });
    }
  }

}

class TodoItem {
  final String title;
  final String ml;
  final DateTime createdAt;

  TodoItem({
    required this.title,
    required this.ml,
    required this.createdAt,
  });
}
