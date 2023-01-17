import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(true) bool useDynamicColor,
  }) = _ThemeState;
}

@freezed
class PageState with _$PageState {
  const factory PageState({
    @Default(0) int selectedIndex,
    @Default(0) int count,
    @Default(false) bool isLoading,
  }) = _PageState;
}
