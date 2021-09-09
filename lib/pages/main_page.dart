import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_dutch_clone/main.dart';
import 'package:go_dutch_clone/model.dart/data.dart';

import '../controller/controller.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
    // required this.controller,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  final controller = Get.find<MainPageController>();

  @override
  void initState() {
    super.initState();
    controller.tabcontroller =
        TabController(length: mainPageList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const AppBarWidget(),
          const SizedBox(
            height: 10,
          ),
          Obx(() => Expanded(
                child: mainPageList.elementAt(controller.page.value),
              ))
        ],
      ),
    );
  }
}
