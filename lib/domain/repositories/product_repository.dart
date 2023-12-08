import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/product/product.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<Product>>> getProducts();
}
