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
          description:
              'Apple, (Malus domestica), domesticated tree and fruit of the rose family (Rosaceae), one of the most widely cultivated tree fruits. Apples are predominantly grown for sale as fresh fruit, though apples are also used commercially for vinegar, juice, jelly, applesauce, and apple butter and are canned as pie stock. A significant portion of the global crop also is used for cider, wine, and brandy. Fresh apples are eaten raw or cooked. There are a variety of ways in which cooked apples are used; frequently, they are used as a pastry filling, apple pie being perhaps the archetypal American dessert. Especially in Europe, fried apples characteristically accompany certain dishes of sausage or pork. Apples provide vitamins A and C, are high in carbohydrates, and are an excellent source of dietary fibre.',
          images: const [
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTD9PvrxU8YgaFWyWFCeZlAeVt64keh99vSA&usqp=CAU',
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp957jhGug97YfVYd8rVhPoIQCKssiJuwoeQ&usqp=CAU'
          ],
          createdAt: DateTime(2022, 1, 2),
          updatedAt: DateTime(2022, 1, 5),
          categories: const [
            Category(
              id: '1',
              name: "Vegetables",
              image:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgkuqFkugKWYxz8i_8IaZNlccsVBJKkAIz4g&usqp=CAU',
            ),
          ],
          priceTags: [
            PriceTag(id: '1', name: 'one шт', price: 13.6),
            PriceTag(id: '2', name: 'kg', price: 154.5),
          ],
        ),
        Product(
          id: '2',
          name: 'Carrot',
          description:
              'The carrot (Daucus carota subsp. sativus) is a root vegetable, typically orange in color, though heirloom variants including purple, black, red, white, and yellow cultivars exist,[2][3][4] all of which are domesticated forms of the wild carrot, Daucus carota, native to Europe and Southwestern Asia. The plant probably originated in Persia and was originally cultivated for its leaves and seeds. The most commonly eaten part of the plant is the taproot, although the stems and leaves are also eaten. The domestic carrot has been selectively bred for its enlarged, more palatable, less woody-textured taproot.',
          images: const [
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGxVyhyHqgh2FieqGOAwuMdnv8JrbzjvzJIw&usqp=CAU'
          ],
          createdAt: DateTime(2022, 1, 2),
          updatedAt: DateTime(2022, 1, 5),
          categories: const [
            Category(
                id: '1',
                name: "Vegetables",
                image:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgkuqFkugKWYxz8i_8IaZNlccsVBJKkAIz4g&usqp=CAU'),
          ],
          priceTags: [
            PriceTag(id: '1', name: 'PriceTag', price: 46.9),
          ],
        ),
        Product(
          id: '3',
          name: 'Banana',
          description:
              'Бана́н — название съедобных плодов культивируемых растений рода Банан (Musa); обычно под таковыми понимают Musa acuminata и Musa × paradisiaca, а также Musa balbisiana, Musa fehi[en], Musa troglodytarum[en] и ряд других. Также бананами могут называть плоды Ensete ventricosum[en] (строго говоря, являющегося представителем другого рода семейства Банановые)[1][2]. С ботанической точки зрения банан является ягодой[3], многосеменной и толстокожей. У культурных форм часто отсутствуют семена, ненужные при вегетативном размножении. Плоды имеют длину 6—30 см и диаметр 2—5 см. Соплодия могут состоять из 300 плодов и иметь массу до 50—60 кг[4]\nБананы — одна из древнейших пищевых культур, а для тропических стран важнейшее пищевое растение и главная статья экспорта. Спелые бананы широко употребляются в пищу по всему миру, их используют при приготовлении большого количества блюд. Помимо употребления в свежем виде, в кухне некоторых народов бананы могут зажариваться или вариться как в очищенном, так и в неочищенном виде[1][5]. Их также сушат, консервируют, используют для приготовления банановой муки, мармелада, сиропов, вин. Бананы применяются также в качестве корма для скота. Запах бананов определяют изовалерианово-изоамиловый и уксусно-изоамиловый эфиры[5]. Выращиваются в тропических и субтропических районах с жарким влажным климатом. Существует большое число сортов съедобных видов банана[1].',
          images: const [
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS994qYsA-vlwUAIMXHoctBtHsYLU8ZgfmCBQ&usqp=CAU',
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8pTtUuqWpDDbtLfLmDAgbJbV74VMYlxccCg&usqp=CAU'
          ],
          createdAt: DateTime(2022, 1, 2),
          updatedAt: DateTime(2022, 1, 5),
          categories: const [
            Category(
                id: '1',
                name: "Friut",
                image:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgkuqFkugKWYxz8i_8IaZNlccsVBJKkAIz4g&usqp=CAU'),
          ],
          priceTags: [
            PriceTag(id: '1', name: 'PriceTag', price: 85.4),
          ],
        ),
      ]);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
