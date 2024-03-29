import 'package:divar/view/addPost3_screen.dart';
import 'package:flutter/material.dart';

import '../Widget/my_widget.dart';

class AddPostSecond extends StatefulWidget {

 final String classTitle,classAddress,classCategoryId;


  const AddPostSecond(this.classTitle, this.classAddress, this.classCategoryId, {super.key});

  @override
  State<AddPostSecond> createState() => _AddPostSecondState();
}

class _AddPostSecondState extends State<AddPostSecond> {

  TextEditingController adPriceController=TextEditingController();
  TextEditingController adCallController=TextEditingController();

  String adPrice="";
  String adCall="";

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
                        "قیمت",
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
                        "با توجه به ارزش کالا یا خدمات خود قیمت را وارد کنید.",
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
                    controller: adPriceController,
                    onChanged: (value) {
                      setState(() {
                        adPrice=adPriceController.text;
                        debugPrint("Price: $adPrice");
                      });
                    },
                    autofocus: false,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'irs',
                        color: Colors.black),
                    cursorColor: const Color.fromRGBO(0, 95, 186, 1),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          borderSide: BorderSide(
                              width: 1.5, color: Color.fromRGBO(0, 95, 186, 1))),
                      focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          borderSide: BorderSide(
                              width: 1.5, color: Color.fromRGBO(0, 95, 186, 1))),
                    ),
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
                        "شماره تماس",
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
                        "در صورت وارد نمودن شماره ثابت حتما پیش شماره را وارد کنید.",
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
                    controller: adCallController,
                    onChanged: (value) {
                      adCall=adCallController.text;
                      debugPrint("Call: $adCall");
                    },
                    autofocus: false,
                    keyboardType: TextInputType.phone,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'irs',
                        color: Colors.black),
                    cursorColor: const Color.fromRGBO(0, 95, 186, 1),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          borderSide: BorderSide(
                              width: 1.5, color: Color.fromRGBO(0, 95, 186, 1))),
                      focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          borderSide: BorderSide(
                              width: 1.5, color: Color.fromRGBO(0, 95, 186, 1))),
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
                                "2/3",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    fontFamily: 'irs',
                                    color: Color.fromRGBO(0, 95, 186, 1)),
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {
                                if(adPrice==""){
                                  showSnakBar(context, "لطفا قیمت آگهی خود را وارد فرمایید");
                                }else if(adCall==""){
                                  showSnakBar(context, "لطفا اطلاعات تماس خود را وارد فرمایید");
                                }else{
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => AddPostThird(widget.classTitle,widget.classAddress,widget.classCategoryId,adPrice,adCall),));
                                }
                              },
                              height: 50,
                              minWidth: 90,
                              color: const Color.fromRGBO(0, 95, 186, 1),
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