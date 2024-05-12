import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:token_lsit/features/tokens/data/models/token/token.dart';
import 'package:token_lsit/features/tokens/domain/repositories/tokens_repository.dart';

part 'tokens_state.dart';
part 'tokens_cubit.freezed.dart';

@injectable
class TokensCubit extends Cubit<TokensState> {
  final TokensRepository _tokensRepository;

  TokensCubit(this._tokensRepository) : super(const TokensState.initial());

  List<Token> tokens = [];

  Future<void> getTokens() async {
    emit(const TokensState.initial());

    try {
      tokens = await _tokensRepository.getTokens();

      emit(TokensState.loaded(tokens));
    } catch (_) {
      emit(const TokensState.error('Could not load data'));
    }
  }

  void searchTokens(String text) async {
    state.whenOrNull(
      loaded: (data) {
        emit(TokensState.loaded(tokens
            .where(
              (element) =>
                  element.name.toUpperCase().contains(text.toUpperCase()) ||
                  element.symbol.toUpperCase().contains(text.toUpperCase()),
            )
            .toList()));
      },
    );
  }
}
