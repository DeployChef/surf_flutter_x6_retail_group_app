import 'package:surf_flutter_courses_template/DataAccess/Interfaces/product_repository.dart';
import 'package:surf_flutter_courses_template/Domain/Interfaces/product_service.dart';
import 'package:surf_flutter_courses_template/Domain/Models/poroduct_entity.dart';

class ProductServiceImpl implements ProductService {
  ProductRepository _repo;

  ProductServiceImpl(this._repo);

  @override
  List<ProductEntity> getProducts() {
    return _repo.getProducts();
  }
}
