import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/list_items/activities_list_item_view.dart';
import 'package:travel_app/list_items/reviews_list_item_view.dart';
import 'package:travel_app/utils/colors.dart';
import 'package:travel_app/utils/dimens.dart';
import 'package:travel_app/utils/images.dart';
import 'package:travel_app/utils/strings.dart';

class TravelPlaceDetailsPage extends StatelessWidget {
  const TravelPlaceDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                /// Images and Actions Icons
                TravelImagesAndIconsView(),

                /// Info
                const TravelPlaceLocationAndDistanceView(),

                /// Spacer
                const SizedBox(
                  height: kMargin30,
                ),

                /// More Activities
                const TravelDetailsActivitiesView(),

                /// Reviews
                const ReviewsView(),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class ReviewsView extends StatelessWidget {
  const ReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kMarginMedium2),
          child: Text(
            kReviewsLabel,
            style: TextStyle(
              color: kUnselectedTextColor,
              fontWeight: FontWeight.bold,
              fontSize: kTextRegular2x,
            ),
          ),
        ),

        /// Spacer
        const SizedBox(
          height: kMarginMedium2,
        ),

        /// Reviews List
        SizedBox(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: kMarginMedium2),
            itemBuilder: (context, index) {
              return const ReviewsListItemView();
            },
            itemCount: 8,
          ),
        ),
      ],
    );
  }
}

class TravelDetailsActivitiesView extends StatelessWidget {
  const TravelDetailsActivitiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kMarginMedium2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                kExploreMoreLabel,
                style: TextStyle(
                  color: kUnselectedTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: kTextRegular2x,
                ),
              ),
              Text(
                kSeeAllLabel,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: kTextRegular2x,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                ),
              ),
            ],
          ),
        ),

        /// Spacer
        const SizedBox(
          height: kMarginMedium2,
        ),

        /// Activities List
        SizedBox(
          height: kActivitiesListItemAndTextHeight,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: kMarginMedium2),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const ActivitiesListItemView();
            },
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}

class TravelPlaceLocationAndDistanceView extends StatelessWidget {
  const TravelPlaceLocationAndDistanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kMarginSmall, left: kMarginMedium2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Name
          const Text(
            "Hoi An",
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: kTextRegular2x,
              fontWeight: FontWeight.bold,
            ),
          ),

          /// Spacer
          const SizedBox(
            height: kMarginMedium,
          ),

          /// Location
          Row(
            children: [
              Image.asset(kSmallLocationIcon),
              const SizedBox(
                width: kMarginMedium,
              ),
              const Text(
                "Vietnam",
                style: TextStyle(
                    color: kUnselectedTextColor, fontSize: kTextRegular2x),
              )
            ],
          ),

          /// Distance
          Row(
            children: [
              Image.asset(kDistanceIcon),
              const SizedBox(
                width: kMarginMedium,
              ),
              const Text(
                "798 km - 14hr 21min",
                style: TextStyle(
                    color: kUnselectedTextColor, fontSize: kTextRegular2x),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class TravelImagesAndIconsView extends StatelessWidget {
  TravelImagesAndIconsView({super.key});

  final PageController _bannerPageController =
      PageController(viewportFraction: 1.0);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      /// Background Images
      SizedBox(
        height: kBannerHeight,
        child: PageView.builder(
          controller: _bannerPageController,
          itemBuilder: (context, index) {
            return Image.asset(
              kItemViewBackgroundImage,
              fit: BoxFit.cover,
            );
          },
          itemCount: 3,
        ),
      ),

      /// Actions Icons
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: kMarginMedium2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                /// Weather Icon
                Image.asset(
                  kWeatherIcon,
                ),

                /// Spacer
                const SizedBox(
                  width: kMarginMedium,
                ),

                /// Weather degree
                const Text(
                  "16°C",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: kTextRegular2x,
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                /// Favorite Icon
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: kMarginXLarge,
                ),

                /// Spacer
                SizedBox(
                  width: kMarginMedium,
                ),

                /// Save Icon
                Icon(
                  Icons.bookmark_added_outlined,
                  color: Colors.white,
                  size: kMarginXLarge,
                ),
              ],
            )
          ],
        ),
      ),

      /// Dots Indicators
      Container(
        alignment: Alignment.bottomCenter,
        height: kDotsIndicatorContainerHeight,
        child: SmoothPageIndicator(
          controller: _bannerPageController,
          count: 3,
          effect: const SlideEffect(
            dotColor: kInactiveDotsColor,
            activeDotColor: kPrimaryColor,
            dotWidth: kMarginMedium,
            dotHeight: kMarginMedium,
          ),
          onDotClicked: (index) {
            _bannerPageController.animateToPage(index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeOut);
          },
        ),
      )
    ]);
  }
}
