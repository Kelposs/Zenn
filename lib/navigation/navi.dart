import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zenn/condition/condition.dart';
import 'package:zenn/searchbar/temp.dart';
import 'package:zenn/stack.dart';

class Navi extends ConsumerWidget {
  const Navi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      routes: {
        // '/': (context) => const Condition(),
        '/': (context) => const Stacks(),
      },
    );
  }
}
