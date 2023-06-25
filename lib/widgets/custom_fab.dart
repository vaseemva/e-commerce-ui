import 'package:ecommerce_ui_akratech/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomFloatingAB extends StatelessWidget {
  const CustomFloatingAB({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kBottomNavigationBarHeight - 8),
      child: FloatingActionButton(
        backgroundColor: fabColor,
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(Icons.calendar_today),
      ),
    );
  }
}
