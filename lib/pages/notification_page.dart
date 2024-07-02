import 'package:flutter/material.dart';
import 'package:travel_app/utils/colors.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Text(
          "Notification Page",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
