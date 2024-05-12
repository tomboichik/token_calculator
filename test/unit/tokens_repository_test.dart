import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:token_lsit/core/network/auth_interceptor.dart';
import 'package:token_lsit/core/network/network_constants.dart';
import 'package:token_lsit/features/tokens/data/data_sources/tokens_remote_data_source_impl.dart';
import 'package:token_lsit/features/tokens/data/models/token/token.dart';
import 'package:token_lsit/features/tokens/data/models/token_data/token_data.dart';
import 'package:token_lsit/features/tokens/domain/repositories/tokens_repository_impl.dart';

void main() {
  group('Tokens repository test', () {
    final dataSource = TokensRemoteDataSourceImpl(
      Dio(
        BaseOptions(
          baseUrl: NetworkConstants.baseUrl,
        ),
      )..interceptors.addAll(
          [
            AuthInterceptor(),
          ],
        ),
    );

    final repository = TokensRepositoryImpl(dataSource);

    test('Get tokens test', () async {
      final res = await repository.getTokens();
      expect(res.runtimeType, List<Token>);
    });

    test('Get token details', () async {
      final res = await repository.getTokens();

      final token = await repository.getTokenDetails(res.first);
      throwIf(
          token.description == null, Exception('Token detail is not fetched'));
    });

    test('Get token market data', () async {
      final res = await repository.getTokens();

      final tokenDetail = await repository.getTokenMarketData(res.first);

      throwIf(tokenDetail.prices.toList().runtimeType != List<List<double>>,
          Exception('Tokendata is not loaded'));
    });
  });
}
