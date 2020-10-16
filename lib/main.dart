import 'package:estados/pages/pg1.dart';
import 'package:estados/pages/pg2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'pg1',
      getPages: [
        GetPage(name: 'pg1', page: () => Pg1()),
        GetPage(name: 'pg2', page: () => Pg2()),
      ],
    );
  }
}
