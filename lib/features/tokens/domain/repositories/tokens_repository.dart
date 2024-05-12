import 'package:token_lsit/features/tokens/data/models/token/token.dart';
import 'package:token_lsit/features/tokens/data/models/token_data/token_data.dart';

abstract class TokensRepository {
  Future<List<Token>> getTokens();

  Future<Token> getTokenDetails(Token token);

  Future<TokenData> getTokenMarketData(Token token);
}
