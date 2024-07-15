import 'package:flutter/material.dart';
import 'package:travel_app/list_items/travel_place_list_item_view.dart';
import 'package:travel_app/pages/travel_place_details_page.dart';
import 'package:travel_app/utils/colors.dart';
import 'package:travel_app/utils/images.dart';

import '../utils/dimens.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,

      /// App Bar
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: kBackgroundColor,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kMarginMedium2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Navigation Bar Icon
              Image.asset(
                kNavigationIcon,
                width: kMarginLarge,
                height: kMarginMedium2,
              ),

              /// Location Icon and Text
              Row(
                children: [
                  Image.asset(
                    kLocationIcon,
                    width: kMarginMedium2,
                    height: kMarginMedium2,
                  ),
                  const SizedBox(
                    width: kMarginMedium,
                  ),
                  const Text(
                    "Vietnam",
                    style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700,
                        fontSize: kTextRegular2x),
                  ),
                ],
              ),

              /// Profile Icon
              Image.asset(
                kSmallProfileImage,
                width: kSmallProfileImageSize,
                height: kSmallProfileImageSize,
              ),
            ],
          ),
        ),
      ),

      body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: kMarginMedium2),
          child: HomeScreenBodyView()),
    );
  }
}

class HomeScreenBodyView extends StatelessWidget {
  const HomeScreenBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: kHomeScreenAppBarRightMargin),
            child: Text(
              "Let's explore...",
              style: TextStyle(
                color: Colors.black,
                fontSize: kTextRegular3x,
              ),
            ),
          ),
        ),

        /// Spacer
        const SliverToBoxAdapter(
          child: SizedBox(
            height: kMargin30,
          ),
        ),

        /// Travel List Grid View
        SliverPadding(
          padding: const EdgeInsets.symmetric(
              horizontal: kHomeScreenAppBarRightMargin),
          sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const TravelPlaceDetailsPage()));
                    },
                    child: const TravelPlaceListItemView());
              }, childCount: 10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: kMarginMedium3,
                mainAxisExtent: kTravelPlaceListItemHeight,
              )),
        )
      ],
    );
  }
}
