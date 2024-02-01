import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          elevation: 6,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: SizedBox(
            height: 160,
            child: Row(
              textDirection: TextDirection.rtl,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    color: Colors.amber,
                    height: 130,
                    width: 160,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Stack(
                        children: [
                          Image.network(
                            "https://www.uplooder.net/img/image/55/dc50aba858e6e91b89832ccf81e8edb2/laptop.jpg",
                            width: 160,
                            height: 170,
                            fit: BoxFit.fill,
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10)),
                                color: Colors.black.withOpacity(0.5),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 6, horizontal: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      "7",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.camera_alt,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 11),
                      child: Text(
                        "عنوان آگهی",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontFamily: 'irs',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "در حد نو",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                          fontFamily: 'irs'),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          "120000 ",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                              fontFamily: 'irs'),
                        ),
                        Text(
                          "تومان",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                              fontFamily: 'irs'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text("لحظاتی پیش در",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontFamily: 'irs')),
                        SizedBox(
                          width: 8,
                        ),
                        Text("مشهد",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontFamily: 'irs')),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
