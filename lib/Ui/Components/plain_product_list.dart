import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/Domain/Models/poroduct_entity.dart';
import 'package:surf_flutter_courses_template/Ui/Components/product_card.dart';

class PlainProductList extends StatelessWidget {
  const PlainProductList({
    super.key,
    required this.products,
  });

  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) => ProductCard(product: products[index]),
    );
  }
}
