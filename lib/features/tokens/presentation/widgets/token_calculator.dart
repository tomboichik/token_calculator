import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:token_lsit/features/tokens/data/models/token/token.dart';

class TokenCalculator extends StatefulWidget {
  const TokenCalculator({
    super.key,
    required this.token,
  });

  final Token token;

  @override
  State<TokenCalculator> createState() => _TokenCalculatorState();
}

class _TokenCalculatorState extends State<TokenCalculator> {
  final _usdController = TextEditingController();
  final _tokenPriceController = TextEditingController();

  @override
  void initState() {
    _usdController.text = widget.token.currentPrice.toString();
    _tokenPriceController.text = 1.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Calculator',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Row(
          children: [
            Expanded(
              child: TextField(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                      RegExp(r'^(\d+)?\.?\d{0,2}'))
                ],
                controller: _usdController,
                onChanged: (value) {
                  final inputValue = double.parse(value);
                  _tokenPriceController.text =
                      (inputValue / widget.token.currentPrice)
                          .toStringAsFixed(5);
                },
                decoration: const InputDecoration(suffix: Text('\$')),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: TextField(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                      RegExp(r'^(\d+)?\.?\d{0,2}'))
                ],
                controller: _tokenPriceController,
                onChanged: (value) {
                  final inputValue = double.parse(value);
                  _usdController.text = (inputValue * widget.token.currentPrice)
                      .toStringAsFixed(5);
                },
                decoration: InputDecoration(suffix: Text(widget.token.symbol)),
              ),
            )
          ],
        ),
      ],
    );
  }
}
