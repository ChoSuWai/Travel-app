import 'package:flutter/material.dart';
import 'package:travel_app/utils/colors.dart';
import 'package:travel_app/utils/dimens.dart';

import '../utils/images.dart';

class TravelPlaceListItemView extends StatelessWidget {
  const TravelPlaceListItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kMarginMedium),
      ),
      child: Stack(
        children: [
          /// Travel Place Background
          ClipRRect(
            borderRadius: BorderRadius.circular(kMarginMedium),
            child: Image.asset(
              kItemViewBackgroundImage,
              fit: BoxFit.cover,
              height: kTravelPlaceListItemHeight,
              width: double.infinity,
            ),
          ),

          /// Gradient and Name
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: kTravelPlaceNameGradientWidth,
              height: kTravelPlaceNameGradientHeight,
              margin: const EdgeInsets.only(left: kMarginMedium3, bottom: kMarginMedium2),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    kTravelPlaceGradientColor,
                    kTravelPlaceGradientColor
                  ])),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Hoi An",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: kTextSmall,
                  ),
                ),
              ),
            ),
          ),

          /// Favorite Icon
          Container(
            margin: const EdgeInsets.only(top: kMarginMedium3, right: kMarginMedium3),
            child: const Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.favorite_outline,
              color: Colors.white,
                size: kMarginXLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
