import 'package:surf_flutter_courses_template/DataAccess/Interfaces/product_repository.dart';
import 'package:surf_flutter_courses_template/Domain/Interfaces/product_service.dart';
import 'package:surf_flutter_courses_template/Domain/Models/poroduct_entity.dart';
import 'package:surf_flutter_courses_template/Domain/Models/sort_type.dart';

class ProductServiceImpl implements ProductService {
  ProductRepository _repo;

  ProductServiceImpl(this._repo);

  @override
  List<ProductEntity> getProducts(SortTypes sortType) {
    final product = _repo.getProducts();

    switch (sortType) {
      case SortTypes.noSort:
        return product;
      case SortTypes.byNameAcc:
        product.sort((a, b) => a.title.compareTo(b.title));
        return product;
      case SortTypes.byNameDec:
      // TODO: Handle this case.
      case SortTypes.byPriceAcc:
      // TODO: Handle this case.
      case SortTypes.byPriceDec:
      // TODO: Handle this case.
      case SortTypes.byTypeAcc:
      // TODO: Handle this case.
      case SortTypes.byTypeDec:
      // TODO: Handle this case.
    }

    return product;
  }
}
