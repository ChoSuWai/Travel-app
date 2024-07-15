import 'package:flutter/material.dart';
import 'package:travel_app/pages/travel_place_details_page.dart';
import 'package:travel_app/utils/colors.dart';

import '../list_items/travel_place_list_item_view.dart';
import '../utils/dimens.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        toolbarHeight: 120,
        centerTitle: false,
        backgroundColor: kBackgroundColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Where do you wanna explore?",
              style: TextStyle(
                color: Colors.black,
                fontSize: kTextRegular3x,
                fontWeight: FontWeight.bold,
              ),
            ),

            /// Spacer
            const SizedBox(
              height: kMarginMedium3,
            ),

            /// Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Search your destination",
                hintStyle: const TextStyle(
                  color: kUnselectedTextColor,
                ),
                prefixIcon: const Icon(Icons.search_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                fillColor: Colors.white,
                filled: true,
              ),
            )
          ],
        ),
      ),
      body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: kMarginMedium2),
          child: SearchScreenBodyView()),
    );
  }
}

class SearchScreenBodyView extends StatelessWidget {
  const SearchScreenBodyView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
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
