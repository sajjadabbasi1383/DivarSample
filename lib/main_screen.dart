import 'package:divar/addPost_screen.dart';
import 'package:divar/category_screen.dart';
import 'package:divar/home_screen.dart';
import 'package:divar/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PersistentTabController _controller;

  static const Color baseColor = Color(0xffA82626);

  static const activeStyle = TextStyle(
      fontFamily: 'irs',
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: baseColor);

  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 0);
    _controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: PersistentTabView(
          context,
          controller: _controller,
          screens: [
            const HomeScreen(),
            const CategoryScreen(),
            const AddPostScreen(),
            const ProfileScreen(),
          ],
          items: [
            PersistentBottomNavBarItem(
                icon: const Icon(
                  CupertinoIcons.home,
                  size: 28,
                ),
                title: "دیوار",
                activeColorPrimary: baseColor,
                textStyle: activeStyle,
                inactiveColorPrimary: Colors.black54),
            PersistentBottomNavBarItem(
                icon: const Icon(
                  CupertinoIcons.text_badge_star,
                  size: 28,
                ),
                title: "دسته بندی",
                activeColorPrimary: baseColor,
                textStyle: activeStyle,
                inactiveColorPrimary: Colors.black54),
            PersistentBottomNavBarItem(
                icon: const Icon(
                  Icons.add_box_outlined,
                  size: 28,
                ),
                title: "ثبت آگهی",
                activeColorPrimary: baseColor,
                textStyle: activeStyle,
                inactiveColorPrimary: Colors.black54),
            PersistentBottomNavBarItem(
                icon: const Icon(
                  CupertinoIcons.person,
                  size: 28,
                ),
                title: "دیوار من",
                activeColorPrimary: baseColor,
                textStyle: activeStyle,
                inactiveColorPrimary: Colors.black54),
          ],
          navBarHeight: 70,
          navBarStyle: NavBarStyle.style6,
          confineInSafeArea: true,
          stateManagement: true,

        ),
      ),
    ));
  }
}
