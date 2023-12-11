import 'package:dartz/dartz.dart';

import '../../../../../core/error/failures.dart';
import '../../../../../core/usecases/usecase.dart';
import '../../entities/category/category.dart';
import '../../repositories/category_repository.dart';

class GetCategoryUseCase implements UseCase<List<Category>, NoParams> {
  final CategoryRepository repository;
  GetCategoryUseCase(this.repository);

  @override
  Future<Either<Failure, List<Category>>> call(NoParams params) async {
    return await repository.getCategories();
  }
}
