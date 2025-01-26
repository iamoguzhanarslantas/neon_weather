import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

import 'package:neon_weather/src/common/common.dart' show Assets, logger;
import 'package:neon_weather/src/routes/routes.dart' show HomeRoute;
import 'package:neon_weather/src/splash/splash.dart'
    show SplashPageState, splashPageProvider;

@RoutePage()
class SplashPage extends HookConsumerWidget {
  static const routeName = '/splash';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final splashPage = ref.watch(splashPageProvider);
    useEffect(
      () {
        if (!splashPage.appInitialized) {
          ref.read(splashPageProvider.notifier).initializeApp();
        } else {
          logger.f('should not open splash page if app is initialized');
        }
        return null;
      },
      [],
    );

    ref.listen<SplashPageState>(
      splashPageProvider,
      (previous, next) {
        if (next.appInitialized) {
          logger.i('app initialized');
          context.router.replace(
            HomeRoute(),
          );
        }
      },
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(Assets.splashLottie),
          ],
        ),
      ),
    );
  }
}
