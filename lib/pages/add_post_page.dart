import 'package:flutter/material.dart';
import 'package:travel_app/utils/colors.dart';

class AddPostPage extends StatelessWidget {
  const AddPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Text(
          "Add Post Screen",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
