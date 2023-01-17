import 'package:freezed_annotation/freezed_annotation.dart';

part 'class.freezed.dart';
part 'class.g.dart';

@freezed
class CoffeeInfo with _$CoffeeInfo {
  const factory CoffeeInfo({
    required String title,
    required String description,
    required List<String> ingredients,
    required String image,
    required int id,
  }) = _CoffeeInfo;
  const CoffeeInfo._();

  factory CoffeeInfo.fromJson(Map<String, dynamic> json) =>
      _$CoffeeInfoFromJson(json);
}
