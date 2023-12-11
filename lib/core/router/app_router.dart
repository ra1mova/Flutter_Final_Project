import 'package:flutter/material.dart';

import '../../domain/entities/product/product.dart';
import '../../presentation/views/main/main_view.dart';

import '../../presentation/views/product/product_details_view.dart';
import '../error/exceptions.dart';

class AppRouter {
  static const String home = '/';

  static const String productDetails = '/product-details';

  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const MainView());
      case productDetails:
        Product product = routeSettings.arguments as Product;
        return MaterialPageRoute(
            builder: (_) => ProductDetailsView(product: product));
      default:
        throw const RouteException('Route not found!');
    }
  }
}
