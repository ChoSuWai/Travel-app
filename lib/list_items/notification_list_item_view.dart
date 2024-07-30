import 'package:flutter/material.dart';
import 'package:travel_app/utils/images.dart';

import '../utils/dimens.dart';

class NotificationListItemView extends StatelessWidget {
  const NotificationListItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: kNotificationItemHeight,
      padding: const EdgeInsets.symmetric(horizontal: kMarginMedium2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          const Text(
            "Candy ",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: kTextRegular2x,
            ),
          ),
          const Text(
            "Liked your post.",
            style: TextStyle(
              color: Colors.black,
              fontSize: kTextRegular2x,
            ),
          ),
          const SizedBox(
            height: kMarginMedium3,
          ),
          const Text(
            "2h ago",
            style: TextStyle(
              color: Colors.black,
              fontSize: kTextRegular2x,
            ),
          )
        ],
      ),
    );
  }
}
