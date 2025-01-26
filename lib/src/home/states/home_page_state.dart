import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:neon_weather/src/home/home.dart' show FullInfoModel;

part 'home_page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    required bool isLoading,
    required String? error,
    required List<FullInfoModel>? data,
  }) = _HomePageState;

  factory HomePageState.init() => const HomePageState(
        isLoading: false,
        error: null,
        data: [],
      );
}