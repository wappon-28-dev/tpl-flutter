// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoffeeInfo _$CoffeeInfoFromJson(Map<String, dynamic> json) {
  return _CoffeeInfo.fromJson(json);
}

/// @nodoc
mixin _$CoffeeInfo {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get ingredients => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoffeeInfoCopyWith<CoffeeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffeeInfoCopyWith<$Res> {
  factory $CoffeeInfoCopyWith(
          CoffeeInfo value, $Res Function(CoffeeInfo) then) =
      _$CoffeeInfoCopyWithImpl<$Res, CoffeeInfo>;
  @useResult
  $Res call(
      {String title,
      String description,
      List<String> ingredients,
      String image,
      int id});
}

/// @nodoc
class _$CoffeeInfoCopyWithImpl<$Res, $Val extends CoffeeInfo>
    implements $CoffeeInfoCopyWith<$Res> {
  _$CoffeeInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? ingredients = null,
    Object? image = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoffeeInfoCopyWith<$Res>
    implements $CoffeeInfoCopyWith<$Res> {
  factory _$$_CoffeeInfoCopyWith(
          _$_CoffeeInfo value, $Res Function(_$_CoffeeInfo) then) =
      __$$_CoffeeInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      List<String> ingredients,
      String image,
      int id});
}

/// @nodoc
class __$$_CoffeeInfoCopyWithImpl<$Res>
    extends _$CoffeeInfoCopyWithImpl<$Res, _$_CoffeeInfo>
    implements _$$_CoffeeInfoCopyWith<$Res> {
  __$$_CoffeeInfoCopyWithImpl(
      _$_CoffeeInfo _value, $Res Function(_$_CoffeeInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? ingredients = null,
    Object? image = null,
    Object? id = null,
  }) {
    return _then(_$_CoffeeInfo(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoffeeInfo extends _CoffeeInfo {
  const _$_CoffeeInfo(
      {required this.title,
      required this.description,
      required final List<String> ingredients,
      required this.image,
      required this.id})
      : _ingredients = ingredients,
        super._();

  factory _$_CoffeeInfo.fromJson(Map<String, dynamic> json) =>
      _$$_CoffeeInfoFromJson(json);

  @override
  final String title;
  @override
  final String description;
  final List<String> _ingredients;
  @override
  List<String> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  final String image;
  @override
  final int id;

  @override
  String toString() {
    return 'CoffeeInfo(title: $title, description: $description, ingredients: $ingredients, image: $image, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoffeeInfo &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description,
      const DeepCollectionEquality().hash(_ingredients), image, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoffeeInfoCopyWith<_$_CoffeeInfo> get copyWith =>
      __$$_CoffeeInfoCopyWithImpl<_$_CoffeeInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoffeeInfoToJson(
      this,
    );
  }
}

abstract class _CoffeeInfo extends CoffeeInfo {
  const factory _CoffeeInfo(
      {required final String title,
      required final String description,
      required final List<String> ingredients,
      required final String image,
      required final int id}) = _$_CoffeeInfo;
  const _CoffeeInfo._() : super._();

  factory _CoffeeInfo.fromJson(Map<String, dynamic> json) =
      _$_CoffeeInfo.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  List<String> get ingredients;
  @override
  String get image;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_CoffeeInfoCopyWith<_$_CoffeeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
