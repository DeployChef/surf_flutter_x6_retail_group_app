import 'package:surf_flutter_courses_template/DataAccess/Interfaces/i_product_repository.dart';
import 'package:surf_flutter_courses_template/Domain/Interfaces/i_product_service.dart';
import 'package:surf_flutter_courses_template/Domain/Models/poroduct_entity.dart';
import 'package:surf_flutter_courses_template/Domain/Models/sort_type.dart';

class ProductService implements IProductService {
  final IProductRepository _repo;

  ProductService(this._repo);

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
        product.sort((a, b) => b.title.compareTo(a.title));
        return product;
      case SortTypes.byPriceAcc:
        product.sort((a, b) => a.price.compareTo(b.price));
        return product;
      case SortTypes.byPriceDec:
        product.sort((a, b) => b.price.compareTo(a.price));
        return product;
      case SortTypes.byTypeAcc:
        product.sort((a, b) => a.category.name.compareTo(b.category.name));
        return product;
      case SortTypes.byTypeDec:
        product.sort((a, b) => b.category.name.compareTo(a.category.name));
        return product;
    }
  }
}
