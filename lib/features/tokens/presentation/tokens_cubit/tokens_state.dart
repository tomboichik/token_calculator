part of 'tokens_cubit.dart';

@freezed
class TokensState with _$TokensState {
  const factory TokensState.initial() = _Initial;

  const factory TokensState.loaded(List<Token> tokens) = _Loaded;

  const factory TokensState.error(String message) = _Error;
}
