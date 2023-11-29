import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:surf_flutter_x6_retail_groupe_app/components/appbar_title.dart';
import 'package:surf_flutter_x6_retail_groupe_app/models/product_entity.dart';
import 'package:surf_flutter_x6_retail_groupe_app/models/products.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.green,
            size: 18,
          ),
          title: AppBarTitle(number: "56", date: "24.02.23 в 12:23"),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Список покупок",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Color(0xff252849),
                    ),
                  ),
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: const Color(0xffF1F1F1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.sort),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: dataForStudents.length,
                  itemBuilder: (BuildContext context, int index) {
                    final product = dataForStudents[index];
                    final amountName = product.amount is Grams ? "г" : "шт";
                    final realPrice = product.price - product.sale;

                    return Padding(
                      padding: const EdgeInsets.only(bottom: 32.0),
                      child: SizedBox(
                        height: 68,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                product.imageUrl,
                                fit: BoxFit.fill,
                                height: 68,
                                width: 68,
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(product.title),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("${product.amount.value} $amountName"),
                                      Row(
                                        children: [
                                          if (product.sale > 0)
                                            Text(
                                              "${product.price} руб",
                                              style: TextStyle(decoration: TextDecoration.lineThrough),
                                            ),
                                          const SizedBox(
                                            width: 16,
                                          ),
                                          if (product.sale > 0)
                                            Text(
                                              "${product.price - product.sale} руб",
                                              style: TextStyle(
                                                color: Colors.red,
                                              ),
                                            )
                                          else
                                            Text(
                                              "${product.price - product.sale} руб",
                                            ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Divider(),
              const SizedBox(
                height: 24,
              ),
              Text(
                "В вашей покупке",
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Color(0xff252849),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "10 товаров",
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff252849),
                    ),
                  ),
                  Text(
                    "7842 руб",
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Color(0xff252849),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 11,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Скидка 5%",
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff252849),
                    ),
                  ),
                  Text(
                    "-300 руб",
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Color(0xff252849),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 11,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Итого",
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xff252849),
                    ),
                  ),
                  Text(
                    "7542 руб",
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xff252849),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.article), label: "Каталог"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Поиск"),
            BottomNavigationBarItem(icon: Icon(Icons.local_mall), label: "Корзина"),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Личное"),
          ],
          currentIndex: 3,
          selectedItemColor: Color(0xFF67CD00),
          unselectedItemColor: Color(0xff60607B),
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
