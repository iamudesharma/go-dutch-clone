import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
// import 'package:go_dutch_clone/model.dart/data.dart';

class MainPageController extends GetxController {
  late TabController tabcontroller;
  // TabController mainTapController =
  //     TabController(length: mainPageList.length, vsync: this);
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  var page = 0.obs;

  var friendandgrouppage = 0.obs;

  @override
  void onInit() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.blueGrey[100],
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.black,
        
      ),
    );
    super.onInit();
  }
}
