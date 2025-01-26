import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:neon_weather/src/common/common.dart'
    show APIEndPoints, DioClient, logger;
import 'package:neon_weather/src/home/home.dart'
    show FullInfoModel, IFullInfoRepository;

class FullInfoRepository extends IFullInfoRepository {
  FullInfoRepository(this.ref);

  final Ref ref;

  final dioClient = DioClient(
    baseUrl: APIEndPoints.kBaseUrl,
  );

  @override
  Future<List<FullInfoModel>?> getFullInfo() async {
    try {
      final headers = {
        'x-rapidapi-key': '20868d8eebmsh9b70080bfb489b3p17e839jsn613e35437187',
        'x-rapidapi-host': 'weather-api167.p.rapidapi.com',
      };

      final params = {
        'place': 'London,GB',
        'lang': 'en',
        'units': 'metric',
        'mode': 'json',
      };

      final Response response = await dioClient.get(
        APIEndPoints.kFullInfo,
        queryParameters: params,
        headers: headers,
      );

      if (response.statusCode == 200) {
        final jsonBody = response.data as Map<String, dynamic>?;
        if (jsonBody != null) {
          final List<FullInfoModel> fullInfoList = [];
          final fullInfoModel = FullInfoModel.fromJson(jsonBody);
          fullInfoList.add(fullInfoModel);
          return fullInfoList;
        }
      }
    } catch (e) {
      logger.e(e);
    }
    return null;
  }
}
