import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:neon_weather/src/common/common.dart' show logger;
import 'package:neon_weather/src/splash/splash.dart' show SplashPageState;

class SplashPageStateNotifier extends StateNotifier<SplashPageState> {
  final Ref ref;
  SplashPageStateNotifier({required this.ref}) : super(SplashPageState.init());
  Future<void> initializeApp() async {
    try {
      logger.i('initializeApp');
      state = SplashPageState.init();
      await Future.delayed(const Duration(seconds: 3));
      state = state.copyWith(appInitialized: true);
    } catch (e) {
      logger.e(e);
    }
  }
}
