import 'package:flutter/material.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
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
                "در عنوان آگهی به موارد مهم و چشمگیر اشاره فرمایید",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: 'irs',
                    color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
