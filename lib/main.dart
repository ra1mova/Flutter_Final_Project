import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/repositories/category_repository_impl.dart';
import 'package:flutter_application_1/data/repositories/product_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/router/app_router.dart';
import 'domain/usecases/product/get_product_usecase.dart';
import 'domain/usecases/product/get_remote_category_usecase.dart';
import 'presentation/blocs/category/category_bloc.dart';
import 'presentation/blocs/home/navbar_cubit.dart';
import 'presentation/blocs/product/product_bloc.dart';
import 'presentation/views/main/main_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
