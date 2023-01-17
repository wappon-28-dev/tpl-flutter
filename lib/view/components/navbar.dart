import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../vm/page.dart';

Widget getBottomNavbar(
  BuildContext context,
  WidgetRef ref,
) {
  final pageState = ref.watch(pageProvider);
  final pageNotifier = ref.read(pageProvider.notifier);

  return NavigationBar(
    selectedIndex: pageState.selectedIndex,
    onDestinationSelected: pageNotifier.updateSelectedIndex,
    destinations: const [
      NavigationDestination(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      NavigationDestination(
        icon: Icon(Icons.coffee),
        label: 'Coffee',
      ),
    ],
  );
}
