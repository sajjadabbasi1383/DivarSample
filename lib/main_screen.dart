import 'package:divar/addPost_screen.dart';
import 'package:divar/category_screen.dart';
import 'package:divar/home_screen.dart';
import 'package:divar/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PersistentTabController _controller;

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
            HomeScreen(),
            CategoryScreen(),
            AddPostScreen(),
            ProfileScreen(),
          ],
        ),
      ),
    ));
  }
}
