import 'package:surf_flutter_courses_template/Domain/Models/poroduct_entity.dart';

abstract class ProductRepository {
  List<ProductEntity> getProducts();
}
