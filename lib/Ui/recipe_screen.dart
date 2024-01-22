import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/Domain/Interfaces/product_service.dart';
import 'package:surf_flutter_courses_template/Domain/Models/poroduct_entity.dart';
import 'package:surf_flutter_courses_template/Domain/Models/sort_type.dart';
import 'package:surf_flutter_courses_template/Ui/Components/bottom_bar.dart';
import 'package:surf_flutter_courses_template/Ui/Components/categoried_product_list.dart';
import 'package:surf_flutter_courses_template/Ui/Components/plain_product_list.dart';
import 'package:surf_flutter_courses_template/Ui/Components/product_card.dart';
import 'package:surf_flutter_courses_template/Ui/Components/product_title.dart';
import 'package:surf_flutter_courses_template/Ui/Components/totals.dart';

class RecipeScreen extends StatefulWidget {
  final ProductService _service;

  const RecipeScreen({super.key, required ProductService service}) : _service = service;

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  SortTypes _lastSortType = SortTypes.noSort;

  @override
  Widget build(BuildContext context) {
    final products = widget._service.getProducts(_lastSortType);
    final totalPrice = products.map((e) => e.price).reduce((value, element) => value + element);
    int totalSale = ((totalPrice / 100) * 5).round();

    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            const Text("Чек № 56"),
            Text(
              "24.02.23 в 12:23",
              style: theme.appBarTheme.titleTextStyle!.copyWith(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: const Color(0xff60607B),
              ),
            ),
          ],
        ),
        leading: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Icon(
            Icons.arrow_back_ios,
            size: 24,
            color: Color(0xFF67CD00),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 24, 20, 40),
        child: Column(
          children: [
            ProductsTitle(
              lastSortType: _lastSortType,
              applySort: (newSortType) {
                setState(() {
                  _lastSortType = newSortType;
                });
              },
            ),
            const SizedBox(height: 16),
            Expanded(
              child: _lastSortType == SortTypes.byTypeAcc || _lastSortType == SortTypes.byTypeDec ? CategoriedProductList(products: products) : PlainProductList(products: products),
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 24),
            Totals(totalCount: products.length, totalPrice: totalPrice, totalSale: totalSale),
          ],
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
