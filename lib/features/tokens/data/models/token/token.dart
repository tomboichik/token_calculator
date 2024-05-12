import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.g.dart';
part 'token.freezed.dart';

@freezed
class Token with _$Token {
  factory Token({
    required String id,
    required String symbol,
    required String name,
    String? description,
    @JsonKey(name: 'current_price') required double currentPrice,
    String? image,
  }) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}
