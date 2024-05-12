import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:token_lsit/core/network/auth_interceptor.dart';
import 'package:token_lsit/core/network/network_constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class Modules {
  Dio get client => Dio(
        BaseOptions(
          baseUrl: NetworkConstants.baseUrl,
        ),
      )..interceptors.addAll(
          [
            AuthInterceptor(),
            PrettyDioLogger(
              requestHeader: true,
            ),
          ],
        );
}
