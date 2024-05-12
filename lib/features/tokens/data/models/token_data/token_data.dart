import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_data.g.dart';
part 'token_data.freezed.dart';

@freezed
class TokenData with _$TokenData {
  factory TokenData({
    required List<List<double>> prices,
  }) = _TokenData;

  factory TokenData.fromJson(Map<String, dynamic> json) =>
      _$TokenDataFromJson(json);
}
