import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text(
                "دیوار من",
                style: TextStyle(
                    fontFamily: 'irs',
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.grey[100],
              elevation: 2,
            ),
            body: ScrollConfiguration(
              behavior: MyBehavior(),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Directionality(
                        textDirection: TextDirection.rtl,
                        child: Card(
                          elevation: 1,
                          child: SizedBox(
                            height: 190,
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(11.0),
                                    child: Text(
                                      "شما با شماه 09158854632 وارد شده اید و آگهی های ثبت شده با این شماره را مشاهده می کنید.",
                                      style: TextStyle(
                                          fontFamily: 'irs', fontSize: 14),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 15.0),
                                    child: OutlinedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "خروج از حساب",
                                        style: TextStyle(
                                            color: Colors.grey[700]),
                                      ),
                                    ),
                                  ),
                                  const Divider(
                                    color: Colors.black,
                                    thickness: 0.1,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: const ListTile(
                                      leading: Icon(
                                        Icons.download,
                                      ),
                                      title: Text(
                                        "نسخه جدید",
                                        style: TextStyle(
                                            fontFamily: 'irs',
                                            fontSize: 16,
                                            color: Colors.black,
                                            ),
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                    Directionality(
                        textDirection: TextDirection.rtl,
                        child: Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {},
                            child: const SizedBox(
                              height: 55,
                              child: Center(
                                child: ListTile(
                                  leading: Icon(
                                    Icons.verified_user,
                                    color: Colors.lightGreen,
                                  ),
                                  title: Text(
                                    "تایید هویت شده",
                                    style: TextStyle(
                                      fontFamily: 'irs',
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )),
                    Directionality(
                        textDirection: TextDirection.rtl,
                        child: Card(
                          elevation: 1,
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: const SizedBox(
                                  height: 50,
                                  child: Center(
                                    child: ListTile(
                                      leading: Icon(
                                        Icons.person,
                                      ),
                                      title: Text(
                                        "آگهی های من",
                                        style: TextStyle(
                                          fontFamily: 'irs',
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(
                                color: Colors.black,
                                thickness: 0.1,
                              ),
                              InkWell(
                                onTap: () {},
                                child: const SizedBox(
                                  height: 50,
                                  child: Center(
                                    child: ListTile(
                                      leading: Icon(
                                        Icons.credit_card_outlined,
                                      ),
                                      title: Text(
                                        "پرداخت های من",
                                        style: TextStyle(
                                          fontFamily: 'irs',
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(
                                color: Colors.black,
                                thickness: 0.1,
                              ),
                              InkWell(
                                onTap: () {},
                                child: const SizedBox(
                                  height: 50,
                                  child: Center(
                                    child: ListTile(
                                      leading: Icon(
                                        Icons.bookmark,
                                      ),
                                      title: Text(
                                        "نشان ها و یادداشت ها",
                                        style: TextStyle(
                                          fontFamily: 'irs',
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(
                                color: Colors.black,
                                thickness: 0.1,
                              ),
                              InkWell(
                                onTap: () {},
                                child: const SizedBox(
                                  height: 50,
                                  child: Center(
                                    child: ListTile(
                                      leading: Icon(
                                        Icons.restore,
                                      ),
                                      title: Text(
                                        "بازدید های اخیر",
                                        style: TextStyle(
                                          fontFamily: 'irs',
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(
                                color: Colors.black,
                                thickness: 0.1,
                              ),
                              InkWell(
                                onTap: () {},
                                child: const SizedBox(
                                  height: 55,
                                  child: Center(
                                    child: ListTile(
                                      leading: Icon(
                                        Icons.settings,
                                      ),
                                      title: Text(
                                        "تنظیمات",
                                        style: TextStyle(
                                          fontFamily: 'irs',
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                    Directionality(
                        textDirection: TextDirection.rtl,
                        child: Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {},
                            child: const SizedBox(
                              height: 55,
                              child: Center(
                                child: ListTile(
                                  leading: Icon(
                                    Icons.extension,
                                  ),
                                  title: Text(
                                    "مدیریت مکمل ها و دسترسی ها",
                                    style: TextStyle(
                                      fontFamily: 'irs',
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )),
                    Directionality(
                        textDirection: TextDirection.rtl,
                        child: Card(
                          elevation: 1,
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: const SizedBox(
                                  height: 50,
                                  child: Center(
                                    child: ListTile(
                                      leading: Icon(
                                        Icons.store,
                                      ),
                                      title: Text(
                                        "دیوار برای کسب و کارها",
                                        style: TextStyle(
                                          fontFamily: 'irs',
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(
                                color: Colors.black,
                                thickness: 0.1,
                              ),
                              InkWell(
                                onTap: () {},
                                child: const SizedBox(
                                  height: 50,
                                  child: Center(
                                    child: ListTile(
                                      leading: Icon(
                                        Icons.support,
                                      ),
                                      title: Text(
                                        "پشتیبانی و قوانین",
                                        style: TextStyle(
                                          fontFamily: 'irs',
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(
                                color: Colors.black,
                                thickness: 0.1,
                              ),
                              InkWell(
                                onTap: () {},
                                child: const SizedBox(
                                  height: 55,
                                  child: Center(
                                    child: ListTile(
                                      leading: Icon(
                                        Icons.info_outline,
                                      ),
                                      title: Text(
                                        "درباره دیوار",
                                        style: TextStyle(
                                          fontFamily: 'irs',
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            )));
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
