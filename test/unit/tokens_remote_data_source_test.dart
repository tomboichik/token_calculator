import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:token_lsit/core/network/auth_interceptor.dart';
import 'package:token_lsit/core/network/network_constants.dart';
import 'package:token_lsit/features/tokens/data/data_sources/tokens_remote_data_source_impl.dart';

void main() {
  group('Token remote data source test for', () {
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

    test('Get tokens test', () async {
      final res = await dataSource.getTokens();

      expect(res.runtimeType, Response);
    });

    test('Get token details', () async {
      final res = await dataSource.getTokens();

      final tokenDetail = await dataSource.getTokenDetails(res.data[0]['id']);

      expect(tokenDetail.runtimeType, Response);
    });

    test('Get token market data', () async {
      final res = await dataSource.getTokens();

      final tokenDetail = await dataSource.getMarketData(res.data[0]['id']);

      expect(tokenDetail.runtimeType, Response);
    });
  });
}
