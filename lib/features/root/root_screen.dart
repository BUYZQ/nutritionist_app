import 'package:flutter/material.dart';
import 'package:nutritionist_app/features/home/screens/food_screen.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(child: FoodScreen()),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 4,
            ),
          ],
        ),
        child: BottomNavigationBar(
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SizedBox(),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SizedBox(),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SizedBox(),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SizedBox(),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
