import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_dutch_clone/helper/helpers.dart';
import 'package:go_dutch_clone/pages/create_expense_page.dart';
import 'package:go_dutch_clone/pages/create_group_expense_page.dart';

class AddPeoplePage extends StatelessWidget {
  const AddPeoplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Helper.customAppBar(
        onPressed: () {
          Get.back();
        },
        title: 'Add People',
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Get.to(
                  () => const CreateGroupExpensePage(),
                  curve: Curves.fastLinearToSlowEaseIn,
                  transition: Transition.downToUp,
                );
              },
              child: const Text(
                'Create Group',
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Text(
              'or',
              style: TextStyle(
                color: Colors.grey.shade800,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                context.width,
                50,
              )),
              onPressed: () {
                Get.to(
                  () => const CreateExpensePage(),
                  curve: Curves.fastLinearToSlowEaseIn,
                  transition: Transition.downToUp,
                );
              },
              child: const Text(
                'CREATE EXPENSE',
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: const [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                ),
                border: OutlineInputBorder(),
                hintText: 'Scarch contacts or phone number',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
