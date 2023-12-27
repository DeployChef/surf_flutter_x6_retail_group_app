import 'package:surf_flutter_courses_template/Domain/Models/poroduct_entity.dart';
import 'package:surf_flutter_courses_template/Domain/Models/sort_type.dart';

abstract class ProductService {
  List<ProductEntity> getProducts(SortTypes sortType);
}
