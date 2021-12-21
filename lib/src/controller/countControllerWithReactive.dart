import 'package:get/get.dart';

enum NUM { FIRST, SECOND }

class CountControllerWithReactive extends GetxController {
  RxInt count = 0.obs;
  RxDouble double = 0.0.obs;
  RxString value = "".obs;
  Rx<NUM> nums = NUM.FIRST.obs;
  RxList<String> list = <String>[].obs;

  void increase() {
    count++;
    double(42);

    nums(NUM.SECOND);
    // list.addAll();
    // list.add();
    // list.addIf();
  }

  void putNumber(int value) {
    count(value);
  }

  @override
  void onInit() {
    ever(count, (_) => print('call'));
    once(count, (_) => print('once call'));
    debounce(count, (_) => print('last once call'),
        time: Duration(microseconds: 1000));
    interval(count, (_) => print('modifying call'),
        time: Duration(microseconds: 1000));
    super.onInit();
  }

  // @override
  // void onClose() {
  //   // TODO: implement onClose
  //   super.onClose();
  // }

  // @override
  // // TODO: implement onDelete
  // InternalFinalCallback<void> get onDelete => super.onDelete;
}
