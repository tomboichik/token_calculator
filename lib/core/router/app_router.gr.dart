// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    TokenDetailRoute.name: (routeData) {
      final args = routeData.argsAs<TokenDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TokenDetailPage(
          key: args.key,
          token: args.token,
        ),
      );
    },
    TokensRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TokensPage(),
      );
    },
  };
}

/// generated route for
/// [TokenDetailPage]
class TokenDetailRoute extends PageRouteInfo<TokenDetailRouteArgs> {
  TokenDetailRoute({
    Key? key,
    required Token token,
    List<PageRouteInfo>? children,
  }) : super(
          TokenDetailRoute.name,
          args: TokenDetailRouteArgs(
            key: key,
            token: token,
          ),
          initialChildren: children,
        );

  static const String name = 'TokenDetailRoute';

  static const PageInfo<TokenDetailRouteArgs> page =
      PageInfo<TokenDetailRouteArgs>(name);
}

class TokenDetailRouteArgs {
  const TokenDetailRouteArgs({
    this.key,
    required this.token,
  });

  final Key? key;

  final Token token;

  @override
  String toString() {
    return 'TokenDetailRouteArgs{key: $key, token: $token}';
  }
}

/// generated route for
/// [TokensPage]
class TokensRoute extends PageRouteInfo<void> {
  const TokensRoute({List<PageRouteInfo>? children})
      : super(
          TokensRoute.name,
          initialChildren: children,
        );

  static const String name = 'TokensRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
