import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/src/controller/countControllerWithGetX.dart';
import 'package:get_x/src/controller/countControllerWithProvider.dart';
import 'package:get_x/src/controller/countControllerWithReactive.dart';
import 'package:get_x/src/pages/state/withGetX.dart';
import 'package:get_x/src/pages/state/withProvider.dart';
import 'package:provider/provider.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());
    return Scaffold(
      appBar: AppBar(
        title: const Text("reactive state page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "GetX",
              style: TextStyle(fontSize: 50),
            ),
            Obx(
              () => Text(
                "${Get.find<CountControllerWithReactive>().count.value}",
                style: TextStyle(fontSize: 50),
              ),
            ),
            RaisedButton(
              child: Text(
                "+",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                Get.find<CountControllerWithReactive>().increase();
              },
            ),
            RaisedButton(
              child: Text(
                "5로 변경",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                Get.find<CountControllerWithReactive>().putNumber(5);
              },
            ),
          ],
        ),
      ),
    );
  }
}
