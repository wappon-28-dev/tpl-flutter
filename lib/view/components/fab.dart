import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../vm/page.dart';

FloatingActionButton getMyFab(BuildContext context, WidgetRef ref) {
  final pageState = ref.watch(pageProvider);
  final pageNotifier = ref.read(pageProvider.notifier);

  return FloatingActionButton(
    child: const Icon(Icons.add),
    onPressed: () => pageNotifier.updateCount(pageState.count + 1),
  );
}
