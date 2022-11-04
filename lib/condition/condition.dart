import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Condition extends ConsumerWidget {
  const Condition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    example3();
    return Scaffold(body: Container());
  }
}

void example1() {
  var myNumber = 22;

  myNumber % 2 == 0 ? print("偶数です") : print("奇数");
}

void example2() {
  var number = 20;

  number < 0
      ? print("負の数です")
      : number == 0
          ? print("０です")
          : print("正の数です");
}

void example3() {
  var pts = 40;

  pts < 40
      ? print("不合格")
      : pts < 60
          ? print("再試験")
          : print("合格");
}
