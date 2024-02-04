import 'dart:io';
import 'dart:js_interop';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddPostThird extends StatefulWidget {

  final String classTitle,classAddress,classCategoryId,classPrice,classCall;

  const AddPostThird(this.classTitle, this.classAddress, this.classCategoryId,
      this.classPrice, this.classCall, {super.key});

  @override
  State<AddPostThird> createState() => _AddPostThirdState();
}

class _AddPostThirdState extends State<AddPostThird> {

  TextEditingController adDescriptionController=TextEditingController();

  String adDescription="";
  String statusImage="نامشخص";
  late File uploadImage;
  String fileName="";

  Future<void> chooseImage() async{
    final choosedImage=await ImagePicker().pickImage(source: ImageSource.gallery);
    if(choosedImage==null)return;

    final imageTemp=File(choosedImage.path);

    Random random =Random();
    int randomNumber=random.nextInt(1000);
    setState(() {
      uploadImage=imageTemp;
      fileName="image_$randomNumber.jpg";
      debugPrint("fileName: $fileName");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height/1.2,
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
                        "تصاویر",
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
                        "با توجه به شرایط و قوانین برنامه تصاویر آگهی خود را بارگذاری نمایید.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: 'irs',
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          chooseImage();
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width / 3 - 18,
                          height: MediaQuery.sizeOf(context).width / 3 - 18,
                          decoration: const BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(8))),
                          child: uploadImage.isNull?Image.file(uploadImage): const Icon(
                            CupertinoIcons.plus,
                            size: 48,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            height: 50,
                            minWidth: 120,
                            color: Colors.green,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            child: const Text(
                              "بارگذاری تصویر",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'irs',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Text(statusImage,style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'irs',
                            fontSize: 15,
                            color: Colors.grey
                          ),)
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: const EdgeInsets.only(right: 16),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "توضیحات",
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
                        "جزییات و نکات قابل توجه آگهی خود را کامل و دقیق بنویسید.\n درج شماره موبایل در متن آگهی مجاز نیست.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: 'irs',
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    controller: adDescriptionController,
                    onChanged: (value) {
                      setState(() {
                        adDescription=adDescriptionController.text;
                        debugPrint("Description: $adDescription");
                      });
                    },
                    keyboardType: TextInputType.multiline,
                    textDirection: TextDirection.rtl,
                    maxLines: 7,
                    style: const TextStyle(
                        fontSize: 15, fontFamily: 'irs', color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "محل درج توضیحات",
                      hintTextDirection: TextDirection.rtl,
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          fontFamily: 'irs',
                          color: Colors.grey),
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
                Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: const EdgeInsets.only(right: 16, left: 16,bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text(
                                "3/3",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    fontFamily: 'irs',
                                    color: Color.fromRGBO(166, 38, 38, 1)),
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {
                                debugPrint("title: ${widget.classTitle}");
                                debugPrint("address: ${widget.classAddress}");
                                debugPrint("category: ${widget.classCategoryId}");
                                debugPrint("price: ${widget.classPrice}");
                                debugPrint("call: ${widget.classCall}");
                                debugPrint("description: $adDescription");
                              },
                              height: 50,
                              minWidth: 90,
                              color: const Color.fromRGBO(166, 38, 38, 1),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              child: const Text(
                                "تایید",
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
                    )),
              ],
            ),
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
