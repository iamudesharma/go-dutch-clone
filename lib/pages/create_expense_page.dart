import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_dutch_clone/helper/helpers.dart';

class CreateExpensePage extends StatelessWidget {
  const CreateExpensePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var _selectedLocation = 'Equally';
    // var _locations = ["Equally", "Unqually"];
    return Scaffold(
      appBar: Helper.customAppBar(
        onPressed: () {
          Get.back();
        },
        title: 'Expense Details',
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Amount',
            style: TextStyle(
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                hintText: '',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Description',
            style: TextStyle(
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                hintText: '',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Paid',
            style: TextStyle(
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                hintText: '',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Row(
            children: [
              Row(
                children: const [
                  Text('Split'),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
