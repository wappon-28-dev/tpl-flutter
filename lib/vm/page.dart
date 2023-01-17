import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/state.dart';

final pageProvider = StateNotifierProvider<PageNotifier, PageState>(
  (ref) => PageNotifier(),
);

class PageNotifier extends StateNotifier<PageState> {
  PageNotifier() : super(const PageState());

  void updateSelectedIndex(int index) =>
      state = state.copyWith(selectedIndex: index);

  // ignore: avoid_positional_boolean_parameters
  void updateIsLoading(bool isLoading) =>
      state = state.copyWith(isLoading: isLoading);

  void updateCount(int count) => state = state.copyWith(count: count);
}
