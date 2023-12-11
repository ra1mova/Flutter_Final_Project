import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/domain/entities/category/category.dart';

import '../../../../core/error/failures.dart';
import '../../domain/repositories/category_repository.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  @override
  Future<Either<Failure, List<Category>>> getCategories() async {
    try {
      final products = [
        const Category(
          id: '1',
          name: "Vegetables",
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIKiPrivnUCpHOdXTvmdr96DKtybagFpwDSA&usqp=CAU',
        ),
        const Category(
          id: '2',
          name: "Fruits",
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlTxho4ctAuGF119v5lR4Qe1Xfj7l13gg7Cw&usqp=CAU',
        ),
      ];
      return Right(products);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
