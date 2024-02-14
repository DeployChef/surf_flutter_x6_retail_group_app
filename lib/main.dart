import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/DataAccess/Interfaces/i_product_repository.dart';
import 'package:surf_flutter_courses_template/DataAccess/mock_product_repository.dart';
import 'package:surf_flutter_courses_template/Domain/Interfaces/i_product_service.dart';
import 'package:surf_flutter_courses_template/Domain/product_service.dart';
import 'package:surf_flutter_courses_template/Ui/recipe_screen.dart';
import 'package:surf_flutter_courses_template/themes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    IProductRepository repo = MockProductRepository();
    IProductService service = ProductService(repo);

    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: RecipeScreen(
        service: service,
      ),
    );
  }
}
