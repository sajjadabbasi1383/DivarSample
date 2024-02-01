import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isInternetAvailable = true;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4)).then((value) {
      isInternetConnected().then((value) {
        setState(() {
          isInternetAvailable = value;
        });
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: isInternetAvailable
                ?  Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/logo.svg',height: 130,),
                  ],
                ),
                const Positioned(
                    bottom: 40,
                    right: 0,
                    left: 0,
                    child: SpinKitThreeBounce(
                      color: Color.fromRGBO(166, 38, 38, 1),
                      size: 30,
                    ),)
              ],
            )
                : Stack(
              children: [
                 Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/logo.svg',height: 130,),
                  ],
                ),
                Positioned(
                    bottom: 35,
                    right: 0,
                    left: 0,
                    child: GestureDetector(
                      onTap: () => isInternetConnected(),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                              CupertinoIcons.refresh_thick,
                              color: Colors.red,
                              size: 29
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "خطا در اتصال به سرور",
                            style: TextStyle(
                                fontFamily: "dana",
                                fontSize: 17,
                                fontWeight: FontWeight.w800,
                                color: Colors.red),
                          )
                        ],
                      ),
                    ))
              ],
            )),
      ),
    );
  }
}

Future<bool> isInternetConnected() async {
  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      // Get.offAll( MainScreen());
      return true;
    } else {
      return false;
    }
  } on SocketException catch (_) {
    return false;
  }
}
