import 'package:flutter/material.dart';
import 'package:travel_app/pages/message_detailed_page.dart';
import 'package:travel_app/utils/colors.dart';
import 'package:travel_app/utils/dimens.dart';

import '../list_items/message_list_item_view.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,

      /// App Bar
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: kBackgroundColor,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: kMarginMedium2),
          child: Row(
            children: [
              Icon(
                Icons.arrow_back,
                color: kSecondaryColor,
                size: kMarginLarge,
              ),
              SizedBox(
                width: kMarginMedium2,
              ),
              Text(
                "Messages",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: kTextRegular2x,
                ),
              ),
            ],
          ),
        ),
      ),

      body: const MessageScreenBodyView(),
    );
  }
}

class MessageScreenBodyView extends StatelessWidget {
  const MessageScreenBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: kMarginMedium2),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => const MessageDetailedPage()));
                    },
                    child: const MessageListItemView());
              },
              childCount: 15,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: kMessageItemHeight),
          ),
        )
      ],
    );
  }
}
