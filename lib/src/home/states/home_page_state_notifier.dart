import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:neon_weather/src/common/common.dart' show logger;
import 'package:neon_weather/src/home/home.dart'
    show HomePageState, IFullInfoRepository;

class HomePageStateNotifier extends StateNotifier<HomePageState> {
  final Ref ref;
  final IFullInfoRepository fullInfoRepository;

  HomePageStateNotifier(
    this.ref, {
    required this.fullInfoRepository,
  }) : super(HomePageState.init()) {
    fetchData();
  }

  Future<void> fetchData() async {
    logger.i('fetchData');
    state = state.copyWith(
      isLoading: true,
    );
    try {
      final data = await fullInfoRepository.getFullInfo();
      if (data != null) {
        state = state.copyWith(
          isLoading: false,
          data: data,
        );
        logger.i('success');
      } else {
        state = state.copyWith(
          isLoading: false,
          error: 'No data',
        );
        logger.e('No data');
      }
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
      );
    }
  }
}