import 'package:flutter/material.dart';
import 'package:travel_app/utils/colors.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Text(
          "Message Screen",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
