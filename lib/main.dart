import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/DataAccess/Interfaces/product_repository.dart';
import 'package:surf_flutter_courses_template/DataAccess/mock_product_repository.dart';
import 'package:surf_flutter_courses_template/Domain/Interfaces/product_service.dart';
import 'package:surf_flutter_courses_template/Domain/product_service_impl.dart';
import 'package:surf_flutter_courses_template/Ui/recipe_screen.dart';
import 'package:surf_flutter_courses_template/themes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    ProductRepository repo = MockProductRepository();
    ProductService service = ProductServiceImpl(repo);

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
