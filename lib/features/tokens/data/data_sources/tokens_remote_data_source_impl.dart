import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:token_lsit/features/tokens/data/data_sources/tokens_remote_data_source.dart';

@Injectable(as: TokensRemoteDataSource)
class TokensRemoteDataSourceImpl implements TokensRemoteDataSource {
  final Dio _dio;

  TokensRemoteDataSourceImpl(this._dio);

  @override
  Future<Response> getTokens() =>
      _dio.get(TokensRemoteDataSource.tokensEndpoint,
          queryParameters: {'vs_currency': "usd"});

  @override
  Future<Response> getTokenDetails(String id) =>
      _dio.get(TokensRemoteDataSource.tokenDetailEndpoint + id);

  @override
  Future<Response> getMarketData(String id) => _dio.get(
        TokensRemoteDataSource.tokenMarketDetailEndpoint(id),
        queryParameters: {
          'vs_currency': "usd",
          "days": 30,
        },
      );
}
