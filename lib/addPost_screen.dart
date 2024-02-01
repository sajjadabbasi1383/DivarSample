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

  @override
  Widget build(BuildContext context) {
    return Column(
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
              SizedBox(height: 8,),
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
              contentPadding: const EdgeInsets.symmetric(
                  vertical: 6, horizontal: 8),
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  borderSide: BorderSide(
                      width: 1.5, color: Color.fromRGBO(166, 38, 38, 0.7))
              ),
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  borderSide: BorderSide(
                      width: 1.5, color: Color.fromRGBO(166, 38, 38, 0.7))
              ),
            ),
          ),
        ),

        const SizedBox(height: 20,),

        Container(
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.only(right: 16),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "انتخاب دسته بندی",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'irs',
                    color: Colors.black),
              ),
              SizedBox(height: 8,),
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

        Container(
          width: MediaQuery
              .of(context)
              .size
              .width / 2,
          height: 70,
          margin: const EdgeInsets.all(16),
          child: DropdownButtonFormField<String>(
            onChanged:,
            items: items.map((item) =>
                DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                  alignment: AlignmentDirectional.centerEnd,
                )).toList(),
            value: selectedItem,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                fontFamily: 'irs',
                color: Colors.grey),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[100],
              contentPadding: const EdgeInsets.symmetric(
                  vertical: 12, horizontal: 12),
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  borderSide: BorderSide(
                      width: 1.5, color: Color.fromRGBO(166, 38, 38, 0.7))
              ),
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  borderSide: BorderSide(
                      width: 1.5, color: Color.fromRGBO(166, 38, 38, 0.7))
              ),
            ),
          ),
        ),

      ],
    );
  }
}
