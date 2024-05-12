import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:token_lsit/features/tokens/data/models/token/token.dart';
import 'package:token_lsit/features/tokens/data/models/token_data/token_data.dart';
import 'package:token_lsit/features/tokens/domain/repositories/tokens_repository.dart';

part 'token_detail_state.dart';
part 'token_detail_cubit.freezed.dart';

@injectable
class TokenDetailCubit extends Cubit<TokenDetailState> {
  final TokensRepository _tokensRepository;

  TokenDetailCubit(this._tokensRepository)
      : super(const TokenDetailState.loading());

  Future<void> getTokenDetails(Token token) async {
    emit(const TokenDetailState.loading());

    try {
      final detailedToken = await _tokensRepository.getTokenDetails(token);

      final tokenData = await _tokensRepository.getTokenMarketData(token);

      emit(
        TokenDetailState.loaded(
          token: detailedToken,
          tokenData: tokenData,
        ),
      );
    } catch (e) {
      print(e);
      emit(const TokenDetailState.error('Could not load data'));
    }
  }
}
