import 'package:divar/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../Model/category_model.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<CategoryModel> listCategory = [
    CategoryModel(1, "املاک", Icons.apartment),
    CategoryModel(2, "وسایل نقلیه", Icons.directions_car),
    CategoryModel(3, "کالای دیجیتال", Icons.phone_android),
    CategoryModel(4, "خانه و آشپزخانه", Icons.kitchen),
    CategoryModel(5, "خدمات", Icons.format_paint),
    CategoryModel(6, "وسایل شخصی", Icons.watch),
    CategoryModel(7, "سرگرمی و فراغت", Icons.sports_esports_outlined),
    CategoryModel(8, "استخدام و کاریابی", Icons.work),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          "دسته بندی آگهی ها",
          style: TextStyle(
              fontFamily: 'irs',
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey[100],
        elevation: 5,
      ),
      body: ListView.builder(
        itemCount: listCategory.length,
        itemBuilder: (context, index) {
          return Directionality(
              textDirection: TextDirection.rtl,
              child: Card(
                elevation: 2,
                child: InkWell(
                  onTap: () {
                    String catId=(index+1).toString();
                    PersistentNavBarNavigator.pushDynamicScreen(
                      context,
                      screen: MaterialPageRoute(builder: (context) => HomeScreen(true, catId,"آگهی های مرتبط با ${listCategory[index].title}"),),
                      withNavBar: true,
                      //pageTransitionAnimation: PageTransitionAnimation.cupertino,
                    );
                    //navController.jumpToTab(0);
                  },
                  child: SizedBox(
                    height: 60,
                    child: Center(
                      child: ListTile(
                        leading: Icon(listCategory[index].icon,size: 32,),
                        title: Text(listCategory[index].title,style: const TextStyle(
                            fontFamily: 'irs',
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios,),
                      ),
                    ),
                  ),
                ),
              ));
        },
      ),
    ));
  }
}
