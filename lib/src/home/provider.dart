import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:neon_weather/src/home/home.dart'
    show FullInfoRepository, HomePageState, HomePageStateNotifier;

final fullInfoRepositoryProvider = Provider<FullInfoRepository>(
  (ref) => FullInfoRepository(ref),
);

final homePageStateNotifierProvider =
    StateNotifierProvider<HomePageStateNotifier, HomePageState>(
  (ref) => HomePageStateNotifier(
    ref,
    fullInfoRepository: ref.watch(fullInfoRepositoryProvider),
  ),
);
