import 'package:neon_weather/src/home/home.dart' show FullInfoModel;

abstract class IFullInfoRepository {
  Future<List<FullInfoModel>?> getFullInfo();
}