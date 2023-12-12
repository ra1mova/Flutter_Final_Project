import 'package:flutter/material.dart';

import '../../domain/entities/product/product.dart';
import '../../presentation/views/authentication/signup_view.dart';
import '../../presentation/views/main/main_view.dart';

import '../../presentation/views/main/other/about/about_view.dart';
import '../../presentation/views/main/other/notification/notification_view.dart';
import '../../presentation/views/main/other/profile/profile_screen.dart';
import '../../presentation/views/main/other/settings/settings_view.dart';
import '../../presentation/views/product/product_details_view.dart';
import '../error/exceptions.dart';

class AppRouter {
  static const String home = '/';
  static const String signUp = '/sign-up';
  static const String productDetails = '/product-details';
  static const String userProfile = '/user-profile';
  static const String settings = '/settings';
  static const String notifications = '/notifications';
  static const String about = '/about';

  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const MainView());
      case productDetails:
        Product product = routeSettings.arguments as Product;
        return MaterialPageRoute(
            builder: (_) => ProductDetailsView(product: product));
      case signUp:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case userProfile:
        return MaterialPageRoute(builder: (_) => const UserProfileScreen());
      case settings:
        return MaterialPageRoute(builder: (_) => const SettingsView());
      case notifications:
        return MaterialPageRoute(builder: (_) => const NotificationView());
      case about:
        return MaterialPageRoute(builder: (_) => const AboutView());
      default:
        throw const RouteException('Route not found!');
    }
  }
}
