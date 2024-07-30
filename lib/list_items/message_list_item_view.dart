import 'package:flutter/material.dart';

import '../utils/dimens.dart';
import '../utils/images.dart';

class MessageListItemView extends StatelessWidget {
  const MessageListItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
              "Hi there.",
              style: TextStyle(
                color: Colors.black,
                fontSize: kTextRegular2x,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: kMarginMedium3,
        ),
        const Text(
          "7:05 PM",
          style: TextStyle(color: Colors.black, fontSize: kTextRegular2x),
        )
      ],

      /// Horizontal Line
      // Container(
      //   height: 1.0,
      //   color: Colors.grey,
      // )
    );
  }
}
