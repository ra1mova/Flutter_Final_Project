import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/repositories/category_repository_impl.dart';
import 'package:flutter_application_1/data/repositories/product_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/router/app_router.dart';
import 'data/data_sources/cart_local_data_source.dart';
import 'data/repositories/cart_repository_impl.dart';
import 'domain/usecases/cart/add_cart_item_usecase.dart';
import 'domain/usecases/cart/clear_cart_usecase.dart';
import 'domain/usecases/cart/get_cached_cart_usecase.dart';
import 'domain/usecases/product/get_product_usecase.dart';
import 'domain/usecases/product/get_remote_category_usecase.dart';
import 'presentation/blocs/cart/cart_bloc.dart';
import 'presentation/blocs/category/category_bloc.dart';
import 'presentation/blocs/home/navbar_cubit.dart';
import 'presentation/blocs/product/product_bloc.dart';
import 'presentation/views/main/main_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavbarCubit(),
        ),
        BlocProvider(
          create: (context) => ProductBloc(
            GetProductUseCase(
              ProductRepositoryImpl(),
            ),
          )..add(const GetProducts()),
        ),
        BlocProvider(
          create: (context) => CategoryBloc(
            GetCategoryUseCase(
              CategoryRepositoryImpl(),
            ),
          )..add(const GetCategories()),
        ),
        BlocProvider(
          create: (context) {
            final localDataSource = CartLocalDataSourceImpl();
            return CartBloc(
              GetCachedCartUseCase(
                CartRepositoryImpl(localDataSource: localDataSource),
              ),
              AddCartUseCase(
                CartRepositoryImpl(localDataSource: localDataSource),
              ),
              ClearCartUseCase(
                CartRepositoryImpl(localDataSource: localDataSource),
              ),
            )..add(const GetCart());
          },
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: AppRouter.home,
        onGenerateRoute: AppRouter.onGenerateRoute,
        home: const MainView(),
      ),
    );
  }
}
