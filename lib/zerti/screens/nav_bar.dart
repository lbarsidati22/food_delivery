import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delevery/pages/favorite_page.dart';
import 'package:food_delevery/zerti/screens/test_favorite.dart';
import 'package:food_delevery/zerti/screens/test_home_page.dart';
import 'package:food_delevery/zerti/screens/test_profile.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class TestNavBarPage extends StatefulWidget {
  const TestNavBarPage({super.key});

  @override
  State<TestNavBarPage> createState() => _TestNavBarPageState();
}

class _TestNavBarPageState extends State<TestNavBarPage> {
  final _controller = PersistentTabController();
  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
          activeColorPrimary: Colors.deepOrange,
          inactiveColorPrimary: Colors.grey,
          icon: Icon(CupertinoIcons.home),
          title: 'Home'),
      PersistentBottomNavBarItem(
          activeColorPrimary: Colors.deepOrange,
          inactiveColorPrimary: Colors.grey,
          icon: Icon(CupertinoIcons.heart),
          title: 'Favorite'),
      PersistentBottomNavBarItem(
          activeColorPrimary: Colors.deepOrange,
          inactiveColorPrimary: Colors.grey,
          icon: Icon(CupertinoIcons.person),
          title: 'Profile'),
    ];
  }

  List<Widget> _buildScreens() {
    return [
      const TestHomePage(),
      const TestFavorite(),
      const TestProfile(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('Foodak'),
      ),
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarItems(),
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardAppears: true,
        padding: const EdgeInsets.only(top: 8, bottom: 6),
        isVisible: true,
        animationSettings: const NavBarAnimationSettings(
          navBarItemAnimation: ItemAnimationSettings(
            duration: Duration(milliseconds: 400),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: ScreenTransitionAnimationSettings(
            animateTabTransition: true,
            duration: Duration(milliseconds: 200),
            screenTransitionAnimationType: ScreenTransitionAnimationType.slide,
          ),
        ),
        confineToSafeArea: true,
        navBarHeight: kBottomNavigationBarHeight,
        navBarStyle: NavBarStyle.style6,
      ),
    );
  }
}
