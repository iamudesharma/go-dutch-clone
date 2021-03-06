import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_dutch_clone/helper/helpers.dart';

class AddNewMembersPage extends StatelessWidget {
  const AddNewMembersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Helper.customAppBar(
          onPressed: () {
            Get.back();
          },
          title: 'Add New Member'),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: const [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                ),
                hintText: 'Search Contacts or phone numbers',
                border: OutlineInputBorder(),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(
            context.width,
            50,
          ),
        ),
        onPressed: () {
          Get.back(

              // curve: Curves.fastLinearToSlowEaseIn,
              // transition: Transition.downToUp,
              );
        },
        child: const Text(
          'CREATE EXPENSE',
        ),
      ),
    );
  }
}
