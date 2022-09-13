import 'package:flutter/material.dart';
import 'package:mobiledev_wechatmoments_flutter/presentation/views/moment_view_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Thoughtworks Recruiting',
      debugShowCheckedModeBanner: false,
      home: MomentViewPage(),
    );
  }
}
