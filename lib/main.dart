import 'package:flutter/material.dart';
import 'package:travel_app/pages/main_page.dart';
import 'package:travel_app/pages/travel_place_details_page.dart';
import 'package:travel_app/utils/fonts.dart';

void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: kInterRegular,
      ),
      home: const TravelPlaceDetailsPage(),
    );
  }
}

