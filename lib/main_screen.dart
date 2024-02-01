import 'package:divar/addPost_screen.dart';
import 'package:divar/category_screen.dart';
import 'package:divar/home_screen.dart';
import 'package:divar/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          screens: const [
            HomeScreen(),
            CategoryScreen(),
            AddPostScreen(),
            ProfileScreen(),
          ],
          items: [
            PersistentBottomNavBarItem(
                icon: const ImageIcon(
                  AssetImage("assets/images/logo.png"),
                  size: 50,
                ),
                activeColorPrimary: baseColor,
                textStyle: activeStyle,
                inactiveColorPrimary: Colors.black54),
            PersistentBottomNavBarItem(
                icon: const Icon(
                  CupertinoIcons.list_bullet,
                  size: 28,
                ),
                title: "دسته بندی",
                activeColorPrimary: baseColor,
                textStyle: activeStyle,
                inactiveColorPrimary: Colors.black54),
            PersistentBottomNavBarItem(
                icon: const Icon(
                  CupertinoIcons.plus_circle,
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
