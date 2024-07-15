import 'package:flutter/material.dart';
import 'package:travel_app/utils/dimens.dart';
import 'package:travel_app/utils/images.dart';

import '../utils/colors.dart';

class ActivitiesListItemView extends StatelessWidget {
  const ActivitiesListItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              kActivitiesImage,
              width: kActivitiesImageWidth,
              height: kActivitiesImageHeight,
              fit: BoxFit.cover,
            ),

            /// Spacer
            const SizedBox(
              width: kMarginMedium2,
            ),
          ],
        ),

        /// Spacer
        const SizedBox(
          height: kMarginMedium2,
        ),

        /// Activity Name
        const Text(
          "Basket Boat Ride",
          style: TextStyle(color: Colors.black, fontSize: kTextRegular),
        ),
      ],
    );
  }
}
