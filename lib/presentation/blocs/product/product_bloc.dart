import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/error/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../../../domain/entities/product/product.dart';
import '../../../domain/usecases/product/get_product_usecase.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProductUseCase _getProductUseCase;

  ProductBloc(this._getProductUseCase)
      : super(const ProductInitial(products: [])) {
    on<GetProducts>(_onLoadProducts);
  }

  void _onLoadProducts(GetProducts event, Emitter<ProductState> emit) async {
    try {
      emit(const ProductLoading(products: []));
      final result = await _getProductUseCase(NoParams());
      result.fold(
        (failure) => emit(ProductError(
          products: state.products,
          failure: failure,
        )),
        (products) => emit(ProductLoaded(
          products: products,
        )),
      );
    } catch (e) {
      emit(ProductError(
        products: state.products,
        failure: ExceptionFailure(),
      ));
    }
  }
}
