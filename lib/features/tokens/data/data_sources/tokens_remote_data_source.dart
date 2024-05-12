import 'package:dio/dio.dart';

abstract class TokensRemoteDataSource {
  static String tokensEndpoint = '/coins/markets';

  static String tokenDetailEndpoint = '/coins/';

  static String tokenMarketDetailEndpoint(String id) =>
      '/coins/$id/market_chart';

  Future<Response> getTokens();

  Future<Response> getTokenDetails(String id);

  Future<Response> getMarketData(String id);
}
