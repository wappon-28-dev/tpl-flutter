import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../vm/page.dart';
import 'components/fab.dart';
import 'components/navbar.dart';
import 'routes/coffee.dart';
import 'routes/home.dart';

class AppRoot extends HookConsumerWidget {
  const AppRoot({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // state
    final pageState = ref.watch(pageProvider);

    // view
    const components = [
      PageHome(),
      PageCoffee(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('tpl_flutter'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(10),
          child: pageState.isLoading
              ? const LinearProgressIndicator()
              : const SizedBox(),
        ),
      ),
      floatingActionButton: getMyFab(context, ref),
      bottomNavigationBar: getBottomNavbar(context, ref),
      body: components[pageState.selectedIndex],
    );
  }
}
