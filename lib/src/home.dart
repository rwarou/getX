import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/src/pages/normal/first.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: const Text("일반적인 라우트"),
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (_) => FirstPage(),
                //   ),
                // );
                Get.to(FirstPage());
              },
            ),
            RaisedButton(
              child: const Text("네임드 라우트"),
              onPressed: () {
                // Navigator.of(context).pushNamed("/first");
                Get.toNamed("/first");
              },
            ),
            RaisedButton(
              child: const Text("arguments 전달"),
              onPressed: () {
                // Navigator.of(context).pushNamed("/first");
                Get.toNamed("/next", arguments: User(name: "rwarou", age: 29));
                // Get.to(FirstPage(), arguments: "rwarou");
              },
            )
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;

  User({required this.name, required this.age});
}
