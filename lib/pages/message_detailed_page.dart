import 'package:flutter/material.dart';
import 'package:travel_app/utils/colors.dart';

class MessageDetailedPage extends StatelessWidget {
  const MessageDetailedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Text(
          "Message Detailed Screen",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
