import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neon_weather/src/splash/splash.dart'
    show SplashPageState, SplashPageStateNotifier;

final splashPageProvider =
    StateNotifierProvider<SplashPageStateNotifier, SplashPageState>(
  (ref) => SplashPageStateNotifier(ref: ref),
);
