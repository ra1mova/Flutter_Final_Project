part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  final List<Product> products;
  const ProductState({required this.products});
}

class ProductInitial extends ProductState {
  const ProductInitial({required super.products});
  @override
  List<Object> get props => [];
}

class ProductEmpty extends ProductState {
  const ProductEmpty({required super.products});
  @override
  List<Object> get props => [];
}

class ProductLoading extends ProductState {
  const ProductLoading({required super.products});
  @override
  List<Object> get props => [];
}

class ProductLoaded extends ProductState {
  const ProductLoaded({required super.products});
  @override
  List<Object> get props => [products];
}

class ProductError extends ProductState {
  final Failure failure;
  const ProductError({
    required super.products,
    required this.failure,
  });
  @override
  List<Object> get props => [];
}
