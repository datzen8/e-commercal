import 'package:e_commmercal/pages/homepage.dart';
import 'package:e_commmercal/styles/app_color.dart';
import 'package:e_commmercal/styles/app_font_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PersistentTabController _controller = PersistentTabController();
  final bool _hideNavBar = false;

  List<Widget> _buildScreens() {
    return [
      HomePage(),
      Container(
        child: Text("Screen1"),
      ),
      Container(
        child: Text("Screen1"),
      ),
      Container(
        child: Text("Screen1"),
      ),
      Container(child: Text("Screen1")),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() => [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          inactiveIcon: const Icon(Icons.home_outlined),
          title: "Home",
          activeColorPrimary: AppColors.primaryColor,
          inactiveColorPrimary: AppColors.primaryColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.shopping_cart),
          inactiveIcon: const Icon(Icons.shopping_cart_outlined),
          title: "Shop",
          activeColorPrimary: AppColors.primaryColor,
          inactiveColorPrimary: AppColors.primaryColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.circle_rounded),
          inactiveIcon: const Icon(Icons.circle_outlined),
          title: "Bag",
          activeColorPrimary: AppColors.primaryColor,
          inactiveColorPrimary: AppColors.primaryColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person),
          inactiveIcon: const Icon(Icons.person_outline),
          title: "Favorites",
          activeColorPrimary: AppColors.primaryColor,
          inactiveColorPrimary: AppColors.primaryColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person),
          inactiveIcon: const Icon(Icons.person_outline),
          title: "Profile",
          activeColorPrimary: AppColors.primaryColor,
          inactiveColorPrimary: AppColors.primaryColor,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        resizeToAvoidBottomInset: true,
        navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
            ? 0.0
            : kBottomNavigationBarHeight,
        backgroundColor: Colors.white,
        decoration: const NavBarDecoration(
            colorBehindNavBar: Colors.indigo,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))
          ,
          boxShadow:  [BoxShadow(blurStyle: BlurStyle.normal,spreadRadius: 2),]),


        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
        ),
        navBarStyle: NavBarStyle.style2,
      ),
    );
  }
}
