import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/domain/entities/category/category.dart';
import 'package:flutter_application_1/domain/entities/product/price_tag.dart';
import 'package:flutter_application_1/domain/entities/product/product.dart';

import '../../../../core/error/failures.dart';
import '../../domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  @override
  Future<Either<Failure, List<Product>>> getProducts() async {
    try {
      return Right([
        Product(
          id: '1',
          name: 'Alma',
          description: 'Satylat alma',
          images: const [
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWsmNjwfeiAcbl06OOArrTVwsRjMmqarM3kg&usqp=CAU'
          ],
          createdAt: DateTime(2022, 1, 2),
          updatedAt: DateTime(2022, 1, 5),
          categories: const [
            Category(
                id: '1',
                name: "Vegatables",
                image:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgkuqFkugKWYxz8i_8IaZNlccsVBJKkAIz4g&usqp=CAU'),
          ],
          priceTags: [
            PriceTag(id: '1', name: 'PriceTag', price: 13.6),
          ],
        ),
        Product(
          id: '1',
          name: 'Alma',
          description: 'Satylat alma',
          images: const [
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWsmNjwfeiAcbl06OOArrTVwsRjMmqarM3kg&usqp=CAU'
          ],
          createdAt: DateTime(2022, 1, 2),
          updatedAt: DateTime(2022, 1, 5),
          categories: const [
            Category(
                id: '1',
                name: "Vegatables",
                image:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgkuqFkugKWYxz8i_8IaZNlccsVBJKkAIz4g&usqp=CAU'),
          ],
          priceTags: [
            PriceTag(id: '1', name: 'PriceTag', price: 13.6),
          ],
        ),
        Product(
          id: '1',
          name: 'Alma',
          description: 'Satylat alma',
          images: const [
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWsmNjwfeiAcbl06OOArrTVwsRjMmqarM3kg&usqp=CAU'
          ],
          createdAt: DateTime(2022, 1, 2),
          updatedAt: DateTime(2022, 1, 5),
          categories: const [
            Category(
                id: '1',
                name: "Vegatables",
                image:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgkuqFkugKWYxz8i_8IaZNlccsVBJKkAIz4g&usqp=CAU'),
          ],
          priceTags: [
            PriceTag(id: '1', name: 'PriceTag', price: 13.6),
          ],
        ),
      ]);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
