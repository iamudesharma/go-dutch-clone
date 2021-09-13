import 'package:get/get.dart';
import 'package:go_dutch_clone/controller/create_new_account_controller.dart';

class CreateNewAccountBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateNewAccoutController>(
      () => CreateNewAccoutController(),
    );
  }
}
