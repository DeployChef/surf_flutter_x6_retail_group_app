import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:surf_flutter_courses_template/Domain/Models/poroduct_entity.dart';
import 'package:surf_flutter_courses_template/Ui/Components/plain_product_list.dart';
import 'package:surf_flutter_courses_template/Ui/Components/product_card.dart';

class CategoriedProductList extends StatelessWidget {
  const CategoriedProductList({
    super.key,
    required this.products,
  });

  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final groups = groupBy(products, (c) {
      return c.category.name;
    });

    return ListView.builder(
      itemCount: groups.length,
      itemBuilder: (context, index) {
        String key = groups.keys.elementAt(index);
        final group = groups[key];
        final isLastItem = index == groups.length - 1;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              key,
              style: theme.textTheme.bodyMedium?.copyWith(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            ...group!.map((e) => ProductCard(product: e)),
            if (!isLastItem) ...[
              Divider(),
              SizedBox(height: 20),
            ],
          ],
        );
      },
    );
  }
}
