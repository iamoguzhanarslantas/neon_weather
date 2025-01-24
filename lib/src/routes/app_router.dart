import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:neon_weather/src/home/home.dart' show HomePage, SettingsPage;
import 'package:neon_weather/src/splash/splash.dart' show SplashPage;

part 'app_router.gr.dart';

final appRouterProvider = Provider((ref) => AppRouter());

@AutoRouterConfig(
  replaceInRouteName: 'Screen|Page,Route',
)
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: SplashPage.routeName,
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: HomePage.routeName,
          page: HomeRoute.page,
        ),
        AutoRoute(
          path: SettingsPage.routeName,
          page: SettingsRoute.page,
        ),
      ];
}
