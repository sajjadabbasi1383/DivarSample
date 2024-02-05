import 'package:flutter/material.dart';

void showSnakBar(BuildContext context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
        action: SnackBarAction(
          label: 'بستن',
          onPressed: () {},
          disabledTextColor: Colors.black,
          textColor: Colors.white,
        ),
        elevation: 10,
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.black87,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
        ),
        content: Text(
            msg,
            style: const TextStyle(
                fontFamily: 'irs',
                fontSize: 15,
                fontWeight: FontWeight.bold,
              color: Colors.white
            )
        )),
  );
}
