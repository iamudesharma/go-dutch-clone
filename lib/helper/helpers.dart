import 'package:flutter/material.dart';

class Helper {
  static customAppBar({String? title, void Function()? onPressed}) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(
        onPressed: () {
          onPressed;
        },
        icon: const Icon(
          Icons.arrow_back,
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
