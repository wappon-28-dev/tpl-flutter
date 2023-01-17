import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../vm/coffee.dart';
import '../../vm/page.dart';

class PageCoffee extends HookConsumerWidget {
  const PageCoffee({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // notifier
    final pageNotifier = ref.read(pageProvider.notifier);

    // local
    final coffeeInfo = useMemoized(CoffeeVM().getCoffeeInfo);
    final coffeeInfoSnapshot = useFuture(coffeeInfo);

    // init
    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          pageNotifier.updateIsLoading(true);
        });
        return null;
      },
      [],
    );

    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (coffeeInfoSnapshot.hasData && coffeeInfoSnapshot.data != null) {
            pageNotifier.updateIsLoading(false);
          }
        });
        return null;
      },
      [coffeeInfoSnapshot],
    );

    // view
    Widget getCard(BuildContext context, int index) {
      final coffee = coffeeInfoSnapshot.requireData[index];
      final colorScheme = Theme.of(context).colorScheme;

      return Card(
        child: Column(
          children: [
            Text(
              coffee.title,
              style: TextStyle(
                color: colorScheme.primary,
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
            Image.network(
              coffee.image,
              height: 200,
            ),
            Text(coffee.description),
          ],
        ),
      );
    }

    if (coffeeInfoSnapshot.hasData) {
      return Center(
        child: ListView.builder(
          itemBuilder: getCard,
        ),
      );
    } else {
      return const Center(child: Text('loading...'));
    }
  }
}
