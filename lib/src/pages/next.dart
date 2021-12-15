import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("next page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "${(Get.arguments as User).name} ${(Get.arguments as User).age}"),
            RaisedButton(
              child: const Text("뒤로 이동"),
              onPressed: () {
                // Navigator.of(context).pop();
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
