import 'package:bucket_list/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BucketList());
}

class BucketList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BucketList',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
