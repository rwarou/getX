import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/src/controller/countControllerWithGetX.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({Key? key}) : super(key: key);

  Widget _button() {
    return RaisedButton(
      child: Text(
        "+",
        style: TextStyle(fontSize: 30),
      ),
      onPressed: () {
        Get.find<CountControllerWithGetX>().increase();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "GetX",
            style: TextStyle(fontSize: 50),
          ),
          GetBuilder<CountControllerWithGetX>(
            builder: (controller) {
              return Text(
                "${controller.count}",
                style: TextStyle(fontSize: 50),
              );
            },
          ),
          _button(),
        ],
      ),
    );
  }
}
