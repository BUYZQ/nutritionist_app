import 'package:flutter/material.dart';
import 'package:nutritionist_app/features/home/screens/food_screen.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: FoodScreen()),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
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
              icon: Image.asset('assets/root/list.png', width: 40),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/root/medicine.png', width: 40),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Image.asset('assets/root/food.png', width: 50),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon:  Image.asset('assets/root/water.png', width: 40),
              label: "",
            ),
            BottomNavigationBarItem(
              icon:  Image.asset('assets/root/search.png', width: 40),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
