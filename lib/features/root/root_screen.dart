import 'package:flutter/material.dart';
import 'package:nutritionist_app/features/home/screens/food_screen.dart';
import 'package:nutritionist_app/features/info/screens/info_screen.dart';
import 'package:nutritionist_app/features/medicine/screens/medicine_screen.dart';
import 'package:nutritionist_app/features/message/screens/message_list.dart';
import 'package:nutritionist_app/features/water/screens/water_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {

  int _currentIndex = 2;

  List<Widget> _screens = [
    InfoScreen(),
    MedicineScreen(),
    FoodScreen(),
    WaterScreen(),
    MessageList(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _screens[_currentIndex]),
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
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          elevation: 0,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: AnimatedPadding(
                padding: EdgeInsets.only(bottom: _currentIndex == 0 ? 20.0 : 0),
                child: Image.asset('assets/root/list.png', width: _currentIndex == 0 ? 50 : 40),
                curve: Curves.ease,
                duration: Duration(milliseconds: 500),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: AnimatedPadding(
                padding: EdgeInsets.only(bottom: _currentIndex == 1 ? 20.0 : 0),
                child: Image.asset('assets/root/medicine.png',  width: _currentIndex == 1 ? 50 : 40),
                curve: Curves.ease,
                duration: Duration(milliseconds: 500),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: AnimatedPadding(
                padding: EdgeInsets.only(bottom: _currentIndex == 2 ? 20.0 : 0),
                child: Image.asset('assets/root/food.png', width: _currentIndex == 2 ? 50 : 40),
                curve: Curves.ease,
                duration: Duration(milliseconds: 500),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon:  AnimatedPadding(
                padding: EdgeInsets.only(bottom: _currentIndex == 3 ? 20.0 : 0),
                child: Image.asset('assets/root/water.png', width: _currentIndex == 3 ? 50 : 40),
                curve: Curves.ease,
                duration: Duration(milliseconds: 500),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon:  AnimatedPadding(
                padding: EdgeInsets.only(bottom: _currentIndex == 4 ? 20.0 : 0),
                child: Image.asset('assets/root/message.png',  width: _currentIndex == 4 ? 50 : 40),
                curve: Curves.ease,
                duration: Duration(milliseconds: 500),
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
