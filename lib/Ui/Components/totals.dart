import 'package:flutter/material.dart';

class Totals extends StatelessWidget {
  const Totals({
    super.key,
    required int totalCount,
    required int totalPrice,
    required int totalSale,
  })  : _totalCount = totalCount,
        _totalPrice = totalPrice,
        _totalSale = totalSale;

  final int _totalCount;
  final int _totalPrice;
  final int _totalSale;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "В вашей покупке",
          style: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w700, fontSize: 16),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$_totalCount товаров",
              style: theme.textTheme.bodySmall,
            ),
            Text(
              "$_totalPrice руб",
              style: theme.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w700),
            )
          ],
        ),
        const SizedBox(height: 11),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Скидка 5%",
              style: theme.textTheme.bodySmall,
            ),
            Text(
              "$_totalSale руб",
              style: theme.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w700),
            )
          ],
        ),
        const SizedBox(height: 11),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Итого",
              style: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            Text(
              "${_totalPrice - _totalSale} руб",
              style: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w700, fontSize: 16),
            )
          ],
        ),
      ],
    );
  }
}
