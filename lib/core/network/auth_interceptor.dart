import 'package:dio/dio.dart';
import 'package:token_lsit/core/network/network_constants.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll(
      {
        "x-cg-demo-api-key": NetworkConstants.headerToken,
        "accept": "application/json",
      },
    );

    super.onRequest(options, handler);
  }
}
