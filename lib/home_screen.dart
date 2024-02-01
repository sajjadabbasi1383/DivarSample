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
      scrollDirection: Axis.vertical,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
          elevation: 6,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Container(
            height: 170,
            child: Row(
              textDirection: TextDirection.rtl,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
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
                            width: 170,
                            height: 170,
                            fit: BoxFit.fill,
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10)),
                                color: Colors.black.withOpacity(0.5),
                              ),
                              child: Padding(
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Container(
                        color: Colors.red,
                        height: 50,
                        width: 175,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Container(
                        color: Colors.blue,
                        height: 30,
                        width: 175,
                      ),
                    ),
                    SizedBox(
                      height: 34,
                    ),
                    Container(
                      height: 30,
                      width: 175,
                      color: Colors.grey,
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
