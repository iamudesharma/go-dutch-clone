import 'package:flutter/material.dart';
import 'package:go_dutch_clone/pages/balance_page.dart';
import 'package:go_dutch_clone/pages/friends_page.dart';
import 'package:go_dutch_clone/pages/group_page.dart';
import 'package:go_dutch_clone/pages/transaction_page.dart';

List<Widget> mainPageList = [
  const BalancePage(),
  const TransactionsPage(),
];

List<Widget> friendandgruops = [
  const FirendPage(),
  const GruopPage(),
];
