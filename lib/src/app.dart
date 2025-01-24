import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:neon_weather/src/common/common.dart' show AppThemes;
import 'package:neon_weather/src/config/config.dart' show AppConfig;
import 'package:neon_weather/src/routes/routes.dart' show appRouterProvider;

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(builder: (context, ref, child) {
      final router = ref.read(appRouterProvider);
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router.config(),
        title: AppConfig.appTitle,
        theme: AppThemes.darkTheme,
      );
    });
  }
}
