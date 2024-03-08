import 'package:flutter/material.dart';
import 'package:hirist_tech/view/BottomNavBar/HomeScreen.dart';

// import 'package:instagram_clone_application/view/select_account_screen/select_account_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  List<Widget> screesList = [
    HomeScreen(),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.pink,
    )
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screesList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: Color.fromARGB(255, 245, 88, 45),
        unselectedItemColor: Colors.black,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.search), label: "Explore"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.crop_square_outlined), label: "Notifications"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "You"),
        ],
      ),
    );
  }
}
