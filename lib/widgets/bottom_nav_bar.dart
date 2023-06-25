import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome_mosaic), label: ''),
        BottomNavigationBarItem(icon: SizedBox(), label: ''),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: '',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: '')
      ],
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.black,
    );
  }
}
