import 'package:divar/view/addPost2_screen.dart';
import 'package:flutter/material.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  List<String> items = [
    'املاک',
    'وسایل نقلیه',
    'کالای دیجیتال',
    'خانه و آشپزخانه',
    'خدمات',
    'وسایل شخصی',
    'سرگرمی و فراغت',
    'استخدام و کاریابی',
  ];

  String selectedItem = "املاک";

  TextEditingController adTitleController=TextEditingController();
  TextEditingController adAddressController=TextEditingController();

  String adTitle="";
  String adAddress="";
  String adCategoryId="";

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyBehavior(),
      child: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height/1.2,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.only(right: 16),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "عنوان آگهی",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'irs',
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "در عنوان آگهی به موارد مهم و چشمگیر اشاره فرمایید.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'irs',
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                margin: const EdgeInsets.all(15),
                child: TextFormField(
                  controller: adTitleController,
                  onChanged: (value) {
                    setState(() {
                      adTitle=adTitleController.text;
                      debugPrint("title: $adTitle");
                    });
                  },
                  autofocus: false,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: 'irs',
                      color: Colors.black),
                  cursorColor: const Color.fromRGBO(166, 38, 38, 1),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[100],
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        borderSide: BorderSide(
                            width: 1.5, color: Color.fromRGBO(166, 38, 38, 0.7))),
                    focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        borderSide: BorderSide(
                            width: 1.5, color: Color.fromRGBO(166, 38, 38, 0.7))),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.only(right: 16),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "دسته بندی",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'irs',
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "با توجه به لیست زیر گروه مربوط به آگهی خود را انتخاب کنید.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'irs',
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  width: MediaQuery.of(context).size.width - 30,
                  height: 70,
                  margin: const EdgeInsets.all(16),
                  child: DropdownButtonFormField<String>(
                    onChanged: (value) => setState(() {
                      selectedItem = value!;
                      adCategoryId=(items.indexOf(value)+1).toString();
                      debugPrint("CategoryId: $adCategoryId");
                    }),
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              alignment: AlignmentDirectional.centerStart,
                              child: Text(
                                item,
                              ),
                            ))
                        .toList(),
                    value: selectedItem,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: 'irs',
                      color: Colors.grey,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          borderSide: BorderSide(
                              width: 1.5, color: Color.fromRGBO(166, 38, 38, 0.7))),
                      focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          borderSide: BorderSide(
                              width: 1.5, color: Color.fromRGBO(166, 38, 38, 0.7))),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.only(right: 16),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "آدرس",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'irs',
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "آدرس خود را در قالب (استان / شهرستان / محله) وارد کنید.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'irs',
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                margin: const EdgeInsets.all(15),
                child: TextFormField(
                  autofocus: false,
                  controller: adAddressController,
                  onChanged: (value) {
                    setState(() {
                      adAddress=adAddressController.text;
                      debugPrint("address: $adAddress");
                    });
                  },
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: 'irs',
                      color: Colors.black),
                  cursorColor: const Color.fromRGBO(166, 38, 38, 1),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[100],
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        borderSide: BorderSide(
                            width: 1.5, color: Color.fromRGBO(166, 38, 38, 0.7))),
                    focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        borderSide: BorderSide(
                            width: 1.5, color: Color.fromRGBO(166, 38, 38, 0.7))),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
              margin: const EdgeInsets.only(right: 16, left: 16,bottom: 10),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    "1/3",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: 'irs',
                        color: Color.fromRGBO(166, 38, 38, 1)),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddPostSecond(adTitle,adAddress,adCategoryId),));
                  },
                  height: 50,
                  minWidth: 90,
                  color: const Color.fromRGBO(166, 38, 38, 1),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  child: const Text(
                    "ادامه",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'irs',
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
