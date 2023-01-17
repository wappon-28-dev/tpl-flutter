// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoffeeInfo _$$_CoffeeInfoFromJson(Map json) => _$_CoffeeInfo(
      title: json['title'] as String,
      description: json['description'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      image: json['image'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$_CoffeeInfoToJson(_$_CoffeeInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'ingredients': instance.ingredients,
      'image': instance.image,
      'id': instance.id,
    };
