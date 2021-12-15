import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/src/controller/countControllerWithGetX.dart';
import 'package:get_x/src/controller/countControllerWithProvider.dart';
import 'package:get_x/src/pages/state/withGetX.dart';
import 'package:get_x/src/pages/state/withProvider.dart';
import 'package:provider/provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithGetX());
    return Scaffold(
      appBar: AppBar(
        title: const Text("state page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: WithGetX(),
            ),
            Expanded(
              child: ChangeNotifierProvider<CountControllerWithProvider>(
                create: (_) => CountControllerWithProvider(),
                child: WithProvider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
