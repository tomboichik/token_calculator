import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:token_lsit/core/router/app_router.dart';
import 'package:token_lsit/features/tokens/data/models/token/token.dart';

class TokenItem extends StatelessWidget {
  final Token token;
  const TokenItem({
    super.key,
    required this.token,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.push(TokenDetailRoute(token: token)),
      child: ListTile(
        title: Text(token.name),
        subtitle: Text(token.symbol),
        trailing: const Icon(
          Icons.arrow_forward,
        ),
      ),
    );
  }
}
