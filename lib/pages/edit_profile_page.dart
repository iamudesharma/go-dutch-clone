import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_dutch_clone/helper/helpers.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Container(
          height: 50,
          color: Colors.purple,
          child: const Center(
            child: Text(
              "Save",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      appBar: Helper.customAppBar(
        onPressed: () {
          Get.back();
        },
        title: 'Edit Profile',
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Name'),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('UPI ID (Optional)'),
            const SizedBox(
              height: 10,
            ),
            TextField(
              enabled: false,
              decoration: InputDecoration(
                suffixIcon: TextButton(
                  onPressed: () {},
                  child: const Text('Add'),
                ),
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text('How to find my UPI ID?'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
