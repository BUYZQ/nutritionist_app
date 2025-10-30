import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nutritionist_app/constants.dart';
import 'package:nutritionist_app/features/home/widgets/custom_app_bar.dart';
import 'package:nutritionist_app/widgets/my_button.dart';

class FoodTodoScreen extends StatefulWidget {
  final String title;

  const FoodTodoScreen({
    super.key,
    required this.title,
  });

  @override
  State<FoodTodoScreen> createState() => _FoodTodoScreenState();
}

class _FoodTodoScreenState extends State<FoodTodoScreen> {

  final List<TodoItem> _todos = [];

  void _openAddTodoDialog() async {
    final TodoItem? newTodo = await showDialog<TodoItem>(
      context: context,
      builder: (context) => const TodoBottomBar(),
    );

    if (newTodo != null) {
      setState(() {
        _todos.add(newTodo);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: widget.title),
            Expanded(
              child: _todos.isEmpty
                  ? const Center(child: Text("Добавьте блюдо"))
                  : ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: _todos.length,
                itemBuilder: (context, index) {
                  final todo = _todos[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
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
                            todo.description,
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
            FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              backgroundColor: Colors.grey.shade400,
              onPressed: _openAddTodoDialog,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/home/add.png'),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class TodoBottomBar extends StatefulWidget {
  const TodoBottomBar({super.key});

  @override
  State<TodoBottomBar> createState() => _TodoBottomBarState();
}

class _TodoBottomBarState extends State<TodoBottomBar> {
  bool isClickNameField = false;
  bool isClickDescriptionField = false;

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descController = TextEditingController();

  void _saveTodo() {
    final title = _titleController.text.trim();
    final desc = _descController.text.trim();

    if (title.isEmpty || desc.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Заполните все поля")),
      );
      return;
    }

    final todo = TodoItem(
      title: title,
      description: desc,
      createdAt: DateTime.now(),
    );

    Navigator.pop(context, todo);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding:
      const EdgeInsets.only(top: 170, left: 20, right: 20, bottom: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom + 20,
        ),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  setState(() => isClickNameField = true);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: isClickNameField
                      ? TextField(
                    controller: _titleController,
                    decoration: const InputDecoration(
                      hintText: "Название блюда",
                      border: InputBorder.none,
                    ),
                  )
                      : Text(
                    "Напишите название\nблюда",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'ActayWide',
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(height: 1, color: Colors.black),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  setState(() => isClickDescriptionField = true);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: isClickDescriptionField
                      ? TextField(
                    controller: _descController,
                    maxLines: 6,
                    decoration: const InputDecoration(
                      hintText: "Описание",
                      border: InputBorder.none,
                    ),
                  )
                      : Text(
                    "Подробно опишите что входит в блюдо",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'ActayWide',
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(
                    title: "Закрыть",
                    onPressed: () => Navigator.pop(context),
                  ),
                  const SizedBox(width: 10),
                  MyButton(
                    title: "Сохранить",
                    onPressed: _saveTodo,
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TodoItem {
  final String title;
  final String description;
  final DateTime createdAt;

  TodoItem({
    required this.title,
    required this.description,
    required this.createdAt,
  });
}
