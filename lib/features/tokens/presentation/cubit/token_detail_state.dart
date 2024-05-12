part of 'token_detail_cubit.dart';

@freezed
class TokenDetailState with _$TokenDetailState {
  const factory TokenDetailState.loading() = _Loading;

  const factory TokenDetailState.loaded({
    required Token token,
    required TokenData tokenData,
  }) = _Loaded;

  const factory TokenDetailState.error(String message) = _Error;
}
