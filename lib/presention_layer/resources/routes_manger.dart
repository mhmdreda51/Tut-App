import 'package:flutter/material.dart';
import 'package:tut_app/presention_layer/forget_password/forgot_password.dart';
import 'package:tut_app/presention_layer/login/login.dart';
import 'package:tut_app/presention_layer/main/main.dart';
import 'package:tut_app/presention_layer/onboarding/on_boarding_view.dart';
import 'package:tut_app/presention_layer/register/register.dart';
import 'package:tut_app/presention_layer/resources/strings_manager.dart';
import 'package:tut_app/presention_layer/splash/splash.dart';
import 'package:tut_app/presention_layer/store_details/store_details_view.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => Splash());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => Login());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnBoardingView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => Register());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgotPassword());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => Main());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => StoreDetailsView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
