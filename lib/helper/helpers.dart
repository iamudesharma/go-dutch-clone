import 'package:flutter/material.dart';

class Helper {
  static double padding = 20.0;
  static customAppBar({String? title, void Function()? onPressed}) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: GestureDetector(
        onTap: onPressed,
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      title: Text(
        title!,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
