import 'package:injectable/injectable.dart';
import 'package:token_lsit/features/tokens/data/data_sources/tokens_remote_data_source.dart';
import 'package:token_lsit/features/tokens/data/models/token/token.dart';
import 'package:token_lsit/features/tokens/data/models/token_data/token_data.dart';
import 'package:token_lsit/features/tokens/domain/repositories/tokens_repository.dart';

@Injectable(as: TokensRepository)
class TokensRepositoryImpl implements TokensRepository {
  final TokensRemoteDataSource _tokensRemoteDataSource;

  TokensRepositoryImpl(this._tokensRemoteDataSource);

  @override
  Future<List<Token>> getTokens() async {
    final response = await _tokensRemoteDataSource.getTokens();

    return (response.data as List).map((e) => Token.fromJson(e)).toList();
  }

  @override
  Future<Token> getTokenDetails(Token token) async {
    final response = await _tokensRemoteDataSource.getTokenDetails(token.id);

    final data = response.data;

    return token.copyWith(
      description: data['description']['en'],
    );
  }

  @override
  Future<TokenData> getTokenMarketData(Token token) async {
    final response = await _tokensRemoteDataSource.getMarketData(token.id);

    return TokenData.fromJson(response.data);
  }
}
