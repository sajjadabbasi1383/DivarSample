import 'dart:convert';

import 'package:divar/Model/ad_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HomeScreen extends StatefulWidget {

  final bool fromCategory;
  final String id;
  final String titleName;


  const HomeScreen(this.fromCategory, this.id,this.titleName, {super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<AdModel> listAds = [];

  @override
  void initState() {
    fetchItems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          widget.titleName,
          style: const TextStyle(
              fontFamily: 'irs',
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        leading: GestureDetector(
            onTap: () {
              setState(() {
                listAds.clear();
                fetchItems();
              });
            },
            child: const SizedBox(
                height: 20,
                width: 20,
                child: Icon(Icons.refresh,color: Colors.black87,))),
        backgroundColor: Colors.grey[100],
        elevation: 3,
      ),
      body: listAds.length == 0
          ? const Center(
              child: Text(
                "موردی برای نمایش یافت نشد",
                style: TextStyle(
                  fontFamily: 'irs',
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: listAds.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: index==0? const EdgeInsets.fromLTRB(12, 9, 12, 8)
                  : const EdgeInsets.fromLTRB(12, 0, 12, 10),
                  elevation: 4,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: SizedBox(
                    height: 160,
                    child: Row(
                      textDirection: TextDirection.ltr,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: SizedBox(
                            height: 130,
                            width: 160,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Stack(
                                children: [
                                  Image.network(
                                    listAds[index].image,
                                    width: 160,
                                    height: 170,
                                    fit: BoxFit.fill,
                                    errorBuilder: (context, error, stackTrace) {
                                      return const Center(child: Icon(Icons.image_not_supported_outlined,size: 40,color: Colors.grey,));
                                    },
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
                                              style:
                                                  TextStyle(color: Colors.white),
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
                         Padding(
                           padding: const EdgeInsets.only(right: 15),
                           child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 11),
                                child: Text(
                                  listAds[index].title,
                                  textDirection: TextDirection.rtl,
                                  style: const TextStyle(
                                      fontFamily: 'irs',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                "در حد نو",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black54,
                                    fontFamily: 'irs'),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                               Row(
                                children: [
                                  Text(
                                    "${listAds[index].price} ",
                                    textDirection: TextDirection.rtl,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.black54,
                                        fontFamily: 'irs'),
                                  ),
                                  const Text(
                                    "تومان",
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black54,
                                        fontFamily: 'irs'),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                               Row(
                                children: [
                                  const Text("لحظاتی پیش در",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black54,
                                          fontFamily: 'irs')),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Text(listAds[index].address,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          color: Colors.black54,
                                          fontFamily: 'irs')),
                                ],
                              ),
                            ],
                        ),
                         ),

                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }

  void fetchItems() async {

    Response response = await get(Uri.parse('http://sajjadabbasi.freehost.io/Divar/get_Post.php'));

    var productJson = json.decode(utf8.decode(response.bodyBytes));

    setState(() {
      for (var tmp in productJson) {
        var product = AdModel(
            tmp['title'],
            tmp['image_link'],
            tmp['address'],
            tmp['price'],
            tmp['count'],
            tmp['category'],
            tmp['call_info'],
            tmp['description'],
            tmp['status'],
            tmp['user']);

        if(widget.fromCategory==false){
          listAds.add(product);
        }else{
          if(tmp['category']==widget.id){
            listAds.add(product);
          }
        }


      }

      debugPrint("listSize: ${listAds.length}");
    });
  }
}
