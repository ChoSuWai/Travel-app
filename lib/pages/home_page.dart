import 'package:flutter/material.dart';
import 'package:travel_app/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Text(
          "Home Screen",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
