import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:token_lsit/core/injection/injection.dart';
import 'package:token_lsit/features/tokens/presentation/tokens_cubit/tokens_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:token_lsit/features/tokens/presentation/widgets/token_item.dart';

@RoutePage()
class TokensPage extends StatefulWidget {
  const TokensPage({super.key});

  @override
  State<TokensPage> createState() => _TokensPageState();
}

class _TokensPageState extends State<TokensPage> {
  final _tokensCubit = getIt.get<TokensCubit>();

  @override
  void initState() {
    _tokensCubit.getTokens();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tokens list'),
        // bottom: ,
      ),
      body: BlocBuilder<TokensCubit, TokensState>(
        bloc: _tokensCubit,
        builder: (context, state) {
          return SingleChildScrollView(
            child: state.when(
              initial: () => const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
              loaded: (tokens) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: TextField(
                      decoration: const InputDecoration(hintText: 'Search'),
                      onChanged: _tokensCubit.searchTokens,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.9,
                    child: ListView.builder(
                      itemBuilder: (context, index) => TokenItem(
                        token: tokens[index],
                      ),
                      itemCount: tokens.length,
                    ),
                  ),
                ],
              ),
              error: (err) => Center(
                child: Column(
                  children: [
                    Text(err),
                    IconButton(
                      onPressed: () => _tokensCubit.getTokens(),
                      icon: const Icon(Icons.refresh),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
