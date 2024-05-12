import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:token_lsit/core/converters/date_time_converter.dart';
import 'package:token_lsit/core/injection/injection.dart';
import 'package:token_lsit/features/tokens/data/models/token/token.dart';
import 'package:token_lsit/features/tokens/presentation/cubit/token_detail_cubit.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:token_lsit/features/tokens/presentation/widgets/token_calculator.dart';

@RoutePage()
class TokenDetailPage extends StatefulWidget {
  final Token token;

  const TokenDetailPage({super.key, required this.token});

  @override
  State<TokenDetailPage> createState() => _TokenDetailPageState();
}

class _TokenDetailPageState extends State<TokenDetailPage> {
  final _tokenDetailCubit = getIt.get<TokenDetailCubit>();

  final _usdController = TextEditingController();
  final _tokenPriceController = TextEditingController();

  @override
  void initState() {
    _tokenDetailCubit.getTokenDetails(widget.token);

    _usdController.text = widget.token.currentPrice.toString();
    _tokenPriceController.text = 1.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TokenDetailCubit, TokenDetailState>(
      bloc: _tokenDetailCubit,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.token.name),
          ),
          body: SingleChildScrollView(
              child: state.when(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (token, tokenData) => Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (token.image != null)
                    Image.network(
                      token.image!,
                      width: 50,
                      height: 50,
                    ),
                  if (token.description?.isNotEmpty ?? false) ...[
                    Text(
                      'Description:  ',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    HtmlWidget('${token.description}'),
                  ],
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Graph',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 400,
                    child: LineChart(
                      LineChartData(
                        lineBarsData: [
                          LineChartBarData(
                              barWidth: 3,
                              spots: tokenData.prices
                                  .map(
                                    (e) => FlSpot(
                                      DateTimeConverter.fromUnixToTime(e),
                                      e[1],
                                    ),
                                  )
                                  .toList()),
                        ],
                      ),
                    ),
                  ),
                  TokenCalculator(
                    token: token,
                  )
                ],
              ),
            ),
            error: (err) => Center(
              child: Column(
                children: [
                  Text(err),
                  IconButton(
                    onPressed: () =>
                        _tokenDetailCubit.getTokenDetails(widget.token),
                    icon: const Icon(Icons.refresh),
                  )
                ],
              ),
            ),
          )),
        );
      },
    );
  }
}
