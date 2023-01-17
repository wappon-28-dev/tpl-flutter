import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../vm/now.dart';
import '../../vm/page.dart';

class PageHome extends HookConsumerWidget {
  const PageHome({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // state
    final nowState = ref.watch(nowProvider);
    final pageState = ref.watch(pageProvider);

    // view
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(nowState.value.toString()),
          const SizedBox(height: 24),
          const Text('Hello World!!!', style: TextStyle(fontSize: 24)),
          const SizedBox(height: 24),
          Text(pageState.count.toString()),
        ],
      ),
    );
  }
}
