import 'package:flutter/material.dart';
import 'package:travel_app/list_items/notification_list_item_view.dart';
import 'package:travel_app/utils/colors.dart';

import '../utils/dimens.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,

        /// App Bar
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: kMarginMedium2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Notifications",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: kTextRegular2x,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.more_vert,
                  color: kSecondaryColor,
                  size: kMarginLarge,
                ),
              ],
            ),
          ),
        ),
        body: const NotificationScreenBodyView());
  }
}

class NotificationScreenBodyView extends StatelessWidget {
  const NotificationScreenBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kNotificationScreenBackgroundColor,
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: kMarginMedium2),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return const NotificationListItemView();
                },
                childCount: 10,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisExtent: kNotificationItemHeight,
                  mainAxisSpacing: kMarginMedium3),
            ),
          )
        ],
      ),
    );
  }
}
