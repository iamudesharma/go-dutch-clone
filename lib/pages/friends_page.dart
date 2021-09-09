import 'package:flutter/material.dart';

class FirendPage extends StatelessWidget {
  const FirendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => const ListTile(
              leading: CircleAvatar(
                child: FlutterLogo(),
              ),
              title: Text('Name1'),
              subtitle: Text(
                'chjdjdbhkh d iuqb dkbdbdiuhid kjbxhj hdvkilsbdcw',
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
            ),
        separatorBuilder: (_, index) => const Padding(
              padding: EdgeInsets.only(left: 100),
              child: Divider(),
            ),
        itemCount: 2);
  }
}
