// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Token _$TokenFromJson(Map<String, dynamic> json) {
  return _Token.fromJson(json);
}

/// @nodoc
mixin _$Token {
  String get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_price')
  double get currentPrice => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenCopyWith<Token> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenCopyWith<$Res> {
  factory $TokenCopyWith(Token value, $Res Function(Token) then) =
      _$TokenCopyWithImpl<$Res, Token>;
  @useResult
  $Res call(
      {String id,
      String symbol,
      String name,
      String? description,
      @JsonKey(name: 'current_price') double currentPrice,
      String? image});
}

/// @nodoc
class _$TokenCopyWithImpl<$Res, $Val extends Token>
    implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
    Object? description = freezed,
    Object? currentPrice = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenImplCopyWith<$Res> implements $TokenCopyWith<$Res> {
  factory _$$TokenImplCopyWith(
          _$TokenImpl value, $Res Function(_$TokenImpl) then) =
      __$$TokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String symbol,
      String name,
      String? description,
      @JsonKey(name: 'current_price') double currentPrice,
      String? image});
}

/// @nodoc
class __$$TokenImplCopyWithImpl<$Res>
    extends _$TokenCopyWithImpl<$Res, _$TokenImpl>
    implements _$$TokenImplCopyWith<$Res> {
  __$$TokenImplCopyWithImpl(
      _$TokenImpl _value, $Res Function(_$TokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
    Object? description = freezed,
    Object? currentPrice = null,
    Object? image = freezed,
  }) {
    return _then(_$TokenImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenImpl implements _Token {
  _$TokenImpl(
      {required this.id,
      required this.symbol,
      required this.name,
      this.description,
      @JsonKey(name: 'current_price') required this.currentPrice,
      this.image});

  factory _$TokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenImplFromJson(json);

  @override
  final String id;
  @override
  final String symbol;
  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'current_price')
  final double currentPrice;
  @override
  final String? image;

  @override
  String toString() {
    return 'Token(id: $id, symbol: $symbol, name: $name, description: $description, currentPrice: $currentPrice, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, symbol, name, description, currentPrice, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenImplCopyWith<_$TokenImpl> get copyWith =>
      __$$TokenImplCopyWithImpl<_$TokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenImplToJson(
      this,
    );
  }
}

abstract class _Token implements Token {
  factory _Token(
      {required final String id,
      required final String symbol,
      required final String name,
      final String? description,
      @JsonKey(name: 'current_price') required final double currentPrice,
      final String? image}) = _$TokenImpl;

  factory _Token.fromJson(Map<String, dynamic> json) = _$TokenImpl.fromJson;

  @override
  String get id;
  @override
  String get symbol;
  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'current_price')
  double get currentPrice;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$TokenImplCopyWith<_$TokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
