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
          padding: EdgeInsets.fromLTRB(20, 24, 20, 40),
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
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 32.0),
                      child: SizedBox(
                        height: 68,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 68,
                              color: Colors.black38,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("data"),
                                  Container(
                                    color: Colors.green,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("0.95 кг"),
                                        Text("379 руб"),
                                      ],
                                    ),
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
