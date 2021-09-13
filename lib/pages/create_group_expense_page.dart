import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_dutch_clone/helper/helpers.dart';
import 'package:go_dutch_clone/pages/add_new_members.dart';

class CreateGroupExpensePage extends StatelessWidget {
  const CreateGroupExpensePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Helper.customAppBar(
        onPressed: () {
          Get.back();
        },
        title: 'Create Group',
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Choose Group Picture'),
                Text(
                  'Upload Image',
                  style: TextStyle(
                    color: Colors.purple,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CircleAvatar(
                  minRadius: 20,
                  maxRadius: 30,
                  backgroundColor: Colors.red,
                  child: FlutterLogo(),
                ),
                CircleAvatar(
                  minRadius: 20,
                  maxRadius: 30,
                  backgroundColor: Colors.red,
                  child: FlutterLogo(),
                ),
                CircleAvatar(
                  minRadius: 20,
                  maxRadius: 30,
                  backgroundColor: Colors.red,
                  child: FlutterLogo(),
                ),
                CircleAvatar(
                  minRadius: 20,
                  maxRadius: 30,
                  backgroundColor: Colors.red,
                  child: FlutterLogo(),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(
                  backgroundColor: Colors.blueGrey.shade200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.grey.shade600),
                  ),
                  label: Text(
                    'Flatmates',
                    style: TextStyle(
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                Chip(
                  backgroundColor: Colors.blueGrey.shade200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.grey.shade600),
                  ),
                  label: Text(
                    'Office',
                    style: TextStyle(
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                Chip(
                  backgroundColor: Colors.blueGrey.shade200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.grey.shade600),
                  ),
                  label: Text(
                    'Trip',
                    style: TextStyle(
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                Chip(
                  backgroundColor: Colors.blueGrey.shade200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.grey.shade600),
                  ),
                  label: Text(
                    'Friends',
                    style: TextStyle(
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                Chip(
                  backgroundColor: Colors.blueGrey.shade200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.grey.shade600),
                  ),
                  label: Text(
                    'Others',
                    style: TextStyle(
                      color: Colors.grey.shade800,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text('Group Name'),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter Group Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Group members 1'),
                TextButton(
                  onPressed: () {
                    Get.to(
                      () => const AddNewMembersPage(),
                      transition: Transition.downToUp,
                    );
                  },
                  child: const Text(
                    '+ Add Member',
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              leading: CircleAvatar(
                child: FlutterLogo(),
              ),
              title: Text('You'),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.purple,
        child: const Center(
            child: Text(
          "CREATE GROUP",
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
