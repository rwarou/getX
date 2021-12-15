import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/src/home.dart';
import 'package:get_x/src/pages/named/first.dart';
import 'package:get_x/src/pages/named/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        "/first": (context) => FirstNamedPage(),
        "/second": (context) => SecondNamedPage(),
      },
      getPages: [
        GetPage(name: "/", page: () => Home()),
        GetPage(name: "/first", page: () => FirstNamedPage()),
        GetPage(name: "/second", page: () => SecondNamedPage()),
      ],
    );
  }
}
