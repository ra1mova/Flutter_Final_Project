import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/domain/entities/product/product.dart';

import '../../../../../core/error/failures.dart';
import '../../../../../core/usecases/usecase.dart';
import '../../repositories/product_repository.dart';

class GetProductUseCase implements UseCase<List<Product>, NoParams> {
  final ProductRepository repository;
  GetProductUseCase(this.repository);

  @override
  Future<Either<Failure, List<Product>>> call(NoParams params) async {
    return await repository.getProducts();
  }
}
