import 'package:flutter/material.dart';

class GruopPage extends StatelessWidget {
  const GruopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => ListTile(
              leading: const CircleAvatar(
                child: FlutterLogo(),
              ),
              title: Text('Group name $index.'),
            ),
        separatorBuilder: (_, index) => const Padding(
              padding: EdgeInsets.only(left: 100),
              child: Divider(),
            ),
        itemCount: 2);
  }
}
