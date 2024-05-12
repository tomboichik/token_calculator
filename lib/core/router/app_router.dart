import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:token_lsit/features/tokens/data/models/token/token.dart';
import 'package:token_lsit/features/tokens/presentation/pages/token_detail_page.dart';
import 'package:token_lsit/features/tokens/presentation/pages/tokens_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: TokensRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: TokenDetailRoute.page,
        )
      ];
}
