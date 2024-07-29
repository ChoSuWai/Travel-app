import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/utils/colors.dart';
import 'package:travel_app/utils/images.dart';

import '../utils/dimens.dart';

class AddPostPage extends StatelessWidget {
  const AddPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,

        /// App Bar
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: kAddPostAppBarColor,
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: kMarginMedium2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "What is special today?",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: kTextRegular2x,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.send_outlined,
                      color: kSecondaryColor,
                      size: kMarginLarge,
                    ),
                    SizedBox(
                      width: kMarginMedium2,
                    ),
                    Icon(
                      Icons.close_outlined,
                      color: kSecondaryColor,
                      size: kMarginLarge,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        body: const AddPostScreenBodyView());
  }
}

class AddPostScreenBodyView extends StatelessWidget {
  const AddPostScreenBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(kMarginMedium2),
            // TODO to change EditableText
            child: Text(
              "Lost in the embrace of scenic landscapes and each other's company. Every journey with you is an adventure of the heart. From sunsets on foreign shores to stolen kisses in new cities, our love story is written in the pages of passports and the echoes of laughter. Here's to exploring the world hand in hand, making memories that last a lifetime. ❤️✈️ #WanderlustLove #AdventuresTogether",
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black,
                fontSize: kTextRegular2x,
              ),
            ),
          ),
        ),

        /// Spacer
        SliverToBoxAdapter(
          child: SizedBox(
            height: kMargin30,
          ),
        ),

        SliverToBoxAdapter(
          child: Row(
            children: [
              SizedBox(
                width: kMarginMedium2,
              ),
              Icon(
                Icons.camera_alt_outlined,
                color: kSecondaryColor,
                size: kMarginLarge,
              ),
              SizedBox(
                width: kMarginMedium2,
              ),
              Icon(
                Icons.drive_folder_upload_outlined,
                color: kSecondaryColor,
                size: kMarginLarge,
              ),
              SizedBox(
                width: kMarginMedium2,
              ),
              Icon(
                Icons.location_on_outlined,
                color: kSecondaryColor,
                size: kMarginLarge,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
