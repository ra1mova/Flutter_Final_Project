import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/error/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../../../domain/entities/category/category.dart';
import '../../../domain/usecases/product/get_remote_category_usecase.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final GetCategoryUseCase _getCategoryUseCase;

  CategoryBloc(this._getCategoryUseCase)
      : super(const CategoryLoading(categories: [])) {
    on<GetCategories>(_onLoadCategories);
  }

  void _onLoadCategories(
      GetCategories event, Emitter<CategoryState> emit) async {
    try {
      final result = await _getCategoryUseCase(NoParams());
      result.fold(
        (failure) => emit(CategoryError(
          categories: state.categories,
          failure: failure,
        )),
        (categories) => emit(CategoryLoaded(
          categories: categories,
        )),
      );
    } catch (e) {
      emit(CategoryError(
        categories: state.categories,
        failure: ExceptionFailure(),
      ));
    }
  }
}
