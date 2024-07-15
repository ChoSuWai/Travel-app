import 'package:flutter/material.dart';
import 'package:travel_app/utils/images.dart';

import '../utils/dimens.dart';

class ReviewsListItemView extends StatelessWidget {
  const ReviewsListItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipOval(
          child: Image.asset(
            kSmallProfileImage,
            width: kMargin60,
            height: kMargin60,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: kMarginMedium3,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Candy",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: kTextRegular2x,
              ),
            ),
            Text(
              "Amazing Small Town",
              style: TextStyle(
                color: Colors.black,
                fontSize: kTextRegular2x,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: kMarginMedium3,
        )
      ],
    );
  }
}
