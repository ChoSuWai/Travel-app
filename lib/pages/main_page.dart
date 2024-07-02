import 'package:flutter/material.dart';
import 'package:travel_app/pages/add_post_page.dart';
import 'package:travel_app/pages/home_page.dart';
import 'package:travel_app/pages/message_page.dart';
import 'package:travel_app/pages/notification_page.dart';
import 'package:travel_app/pages/search_page.dart';
import 'package:travel_app/utils/colors.dart';
import 'package:travel_app/utils/dimens.dart';
import 'package:travel_app/utils/images.dart';
import 'package:travel_app/utils/strings.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  List<Widget> screenWidgets = [
    const HomePage(),
    const AddPostPage(),
    const SearchPage(),
    const NotificationPage(),
    const MessagePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kBottomNavigationUnSelectedColor,
        selectedFontSize: kTextSmall,
        unselectedFontSize: kTextSmall,
        showSelectedLabels: true,
        backgroundColor: kBackgroundColor,
        type: BottomNavigationBarType.fixed,
        onTap: (selectedIndex) {
          setState(() {
            currentIndex = selectedIndex;
          });
        },
        items: _getBottomNavigationBarItems(),
      ),
      body: screenWidgets[currentIndex],
    );
  }

  List<BottomNavigationBarItem> _getBottomNavigationBarItems() {
    return [
      /// Home
      BottomNavigationBarItem(
          icon: Image.asset(
            kHomeIcon,
            width: kMarginLarge,
            height: kMarginLarge,
          ),
          activeIcon: Image.asset(
            kHomeIcon,
            width: kMarginLarge,
            height: kMarginLarge,
            color: kPrimaryColor,
          ),
          label: kHomeLabel),

      /// Add Post
      BottomNavigationBarItem(
          icon: Image.asset(
            kAddPostIcon,
            width: kMarginLarge,
            height: kMarginLarge,
          ),
          activeIcon: Image.asset(
            kAddPostIcon,
            width: kMarginLarge,
            height: kMarginLarge,
            color: kPrimaryColor,
          ),
          label: kAddPostLabel),

      /// Search
      BottomNavigationBarItem(
          icon: Image.asset(
            kSearchIcon,
            width: kMarginLarge,
            height: kMarginLarge,
          ),
          activeIcon: Image.asset(
            kSearchIcon,
            width: kMarginLarge,
            height: kMarginLarge,
            color: kPrimaryColor,
          ),
          label: kSearchLabel),

      /// Notification
      BottomNavigationBarItem(
          icon: Image.asset(
            kNotificationIcon,
            width: kMarginLarge,
            height: kMarginLarge,
          ),
          activeIcon: Image.asset(
            kNotificationIcon,
            width: kMarginLarge,
            height: kMarginLarge,
            color: kPrimaryColor,
          ),
          label: kNotificationLabel),

      /// Message
      BottomNavigationBarItem(
          icon: Image.asset(
            kMessageIcon,
            width: kMarginLarge,
            height: kMarginLarge,
          ),
          activeIcon: Image.asset(
            kMessageIcon,
            width: kMarginLarge,
            height: kMarginLarge,
            color: kPrimaryColor,
          ),
          label: kMessageLabel),
    ];
  }
}
