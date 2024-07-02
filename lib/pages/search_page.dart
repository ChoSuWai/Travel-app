import 'package:flutter/material.dart';
import 'package:travel_app/utils/colors.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Text(
          "Search Screen",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
