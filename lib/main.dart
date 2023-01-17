import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'view/root.dart';
import 'vm/theme.dart';

void main() async => runApp(const ProviderScope(child: TplFlutter()));

class TplFlutter extends ConsumerWidget {
  const TplFlutter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // state
    final themeState = ref.watch(themeProvider);

    // view
    return DynamicColorBuilder(
      builder: (ColorScheme? lightColorScheme, ColorScheme? darkColorScheme) {
        return MaterialApp(
          title: 'tpl_flutter',
          theme: ThemeNotifier().getLightTheme(lightColorScheme, context),
          darkTheme: ThemeNotifier().getDarkTheme(darkColorScheme, context),
          themeMode: themeState.themeMode,
          debugShowCheckedModeBanner: false,
          home: const AppRoot(),
        );
      },
    );
  }
}
