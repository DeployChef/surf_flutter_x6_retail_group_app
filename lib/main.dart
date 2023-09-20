import 'package:flutter/material.dart';
import 'package:surf_flutter_x6_retail_groupe_app/components/appbar_title.dart';

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
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.green,
            size: 18,
          ),
          title: AppBarTitle(number: "56", date: "24.02.23 в 12:23"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Список покупок",
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Color(0xff252849),
                    ),
                  ),
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: Color(0xffF1F1F1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.sort),
                  )
                ],
              ),
              Expanded(child: Container()),
              Divider(),
              SizedBox(
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
      ),
    );
  }
}
