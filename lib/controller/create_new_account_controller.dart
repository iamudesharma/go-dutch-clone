import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateNewAccoutController extends GetxController {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController usernameController;

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    usernameController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    usernameController.dispose();
    super.onClose();
  }
}
